require "set"

module Jekyll
  module ChartDataFilters
    # Keys of `hash` (e.g. site.categories) whose post count exceeds
    # `min_count`, sorted by count descending. Excludes top-level categories
    # (any name that is itself the first category of some post) so a
    # subcategory isn't charted redundantly alongside its parent.
    def keys_with_min_count(hash, min_count)
      top_level = hash.values.flatten.filter_map { |post| (post.data["categories"] || []).first }.to_set

      hash.map { |name, posts| [name, posts.size] }
          .reject { |name, _| top_level.include?(name) }
          .select { |_, count| count > min_count.to_i }
          .sort_by { |_, count| -count }
          .map { |name, _| name }
    end

    # The `n` keys of `hash` with the highest post counts, sorted descending,
    # skipping any name in `exclude`.
    def top_n_by_count(hash, n, exclude = [])
      exclude = Array(exclude)

      hash.map { |name, posts| [name, posts.size] }
          .reject { |name, _| exclude.include?(name) }
          .sort_by { |_, count| -count }
          .first(n.to_i)
          .map { |name, _| name }
    end

    # [min_year, max_year] spanned by the posts under the given `names` in `hash`.
    def year_span(hash, names)
      years = []
      Array(names).each do |name|
        (hash[name] || []).each { |post| years << post.date.year }
      end
      return [nil, nil] if years.empty?

      [years.min, years.max]
    end

    # One entry per name in `names`: {"name" => ..., "counts" => [per-year counts]}
    # counts run from min_year to max_year inclusive, in order.
    def year_chart_series(hash, names, min_year, max_year)
      Array(names).map do |name|
        counts = Hash.new(0)
        (hash[name] || []).each { |post| counts[post.date.year] += 1 }
        {
          "name" => name,
          "counts" => (min_year.to_i..max_year.to_i).map { |y| counts[y] },
        }
      end
    end

    # "Nice" round tick values spanning [min_v, max_v], roughly `target` of them.
    # Classic Heckbert nice-numbers algorithm, integer output.
    def nice_ticks(min_v, max_v, target = 5)
      min_v = min_v.to_f
      max_v = max_v.to_f
      return [min_v.round] if max_v <= min_v

      nice_num = lambda do |range, round|
        exponent = Math.log10(range).floor
        fraction = range / (10**exponent)
        nf =
          if round
            if fraction < 1.5 then 1
            elsif fraction < 3 then 2
            elsif fraction < 7 then 5
            else 10
            end
          elsif fraction <= 1 then 1
          elsif fraction <= 2 then 2
          elsif fraction <= 5 then 5
          else 10
          end
        nf * (10**exponent)
      end

      span = max_v - min_v
      spacing = nice_num.call(span / [target - 1, 1].max, true)
      nice_min = (min_v / spacing).floor * spacing
      nice_max = (max_v / spacing).ceil * spacing

      ticks = []
      v = nice_min
      while v <= nice_max + (spacing * 0.5)
        ticks << v.round
        v += spacing
      end
      ticks.select { |t| t >= min_v && t <= max_v }
    end

    # nice_ticks, but with the exact endpoints always included and any nice
    # tick that would collide with an endpoint label dropped in its favor.
    def axis_ticks_with_endpoints(min_v, max_v, target = 6)
      min_v = min_v.to_f
      max_v = max_v.to_f
      ticks = nice_ticks(min_v, max_v, target)
      return [min_v.round, max_v.round].uniq if ticks.length < 2

      spacing = ticks[1] - ticks[0]
      threshold = spacing * 0.4

      ticks = ticks.reject { |t| (t - min_v).abs < threshold || (t - max_v).abs < threshold }
      ([min_v.round, max_v.round] + ticks).uniq.sort
    end
  end
end

Liquid::Template.register_filter(Jekyll::ChartDataFilters)
