---
title: "Using Samba to share files between Linux and Windows"
date: 2007-08-01
pin: false
categories: [writing, article]
tags: [open source software, samba, linux, linux.com]
description: A 2007 Linux.com article about sharing files between Linux and Windows machines using Samba.
# image:
#   path:
#  alt:
---

*This article was originally published on [Linux.com](https://web.archive.org/web/20081010131954/http://www.linux.com/whatislinux/118625) on 2007-08.*

Your home network might have a few Windows machines on the ground floor, a Mac in an upstairs bedroom, a PocketPC on a nightstand, and a Linux box or two in the basement, all networked with a generic router. For all the devices in this familiar family setup, or even [a scenario with thousands of users](https://web.archive.org/web/20081010131954/http://us3.samba.org/samba/docs/man/Samba-Guide/2000users.html), the [Samba](https://web.archive.org/web/20081010131954/http://us3.samba.org/) suite is an ideal solution for file and print sharing.

Several cross-platform file and print-sharing solutions exist, but Samba and the SMB/CIFS protocol may be the easiest to implement in a home networking environment. Windows machines and Macs come with the functionality to work with with Samba out of the box, and you should only need to install a single Samba package for Linux machines. GNOME and KDE offer Samba client functionality built in to their default file managers, Nautilus and Konqueror, respectively.

We'll focus on configuring and using Samba for file and print-sharing in a typical home network with Linux and Windows machines. You can choose from [several Samba configuration GUIs](https://web.archive.org/web/20081010131954/http://us3.samba.org/samba/GUI/), but we'll go the old-fashioned route and point our text editors to smb.conf. The configuration file is commonly found at /etc/samba/smb.conf or /usr/local/samba/lib/smb.conf. Note that you will need to be root to edit these, or use sudo.

Samba will run on nearly any Unix-like system and can be found in the repositories of just about every Linux distribution. Begin by using your distribution's package manager to make sure it is installed.

## Configuring Samba

Samba is a very mature and complex package, so its configuration file can be long and complicated. You will have to trust that your distribution supplied you with a reasonably sound default configuration and focus on changing just a few lines in smb.conf to make sure they are appropriate for the purposes of a home network. If you want to know more about any line, consult `man smb.conf`.

Remember that any line in the configuration file preceded by a semicolon (;) or hash mark (#) is a comment and will not be recognized as an active setting. To activate the line, remove the semicolon or hash. It's a good idea to add your own comments preceded by one of these characters so that you will remember the logic behind your configuration the next time you load smb.conf.

The first option to consider is Samba's security level. This line will appear under the `[global]` section of smb.conf, where all Samba-wide configuration is done. The other sections, addressed later in this article, relate to specific Samba services (shared resources). The security level will most likely be set to the value `user` and look like this:

`security = user`

For a home network, you may want to consider setting this to `share`. The main difference is that with the `user` setting you will be required to log into the Samba server before you can browse its resources. This is a wise precaution on untrusted networks, but will be inconvenient when using resources you would like your entire household to have access to, such as a printer. With `share` enabled, you can still require users to authenticate themselves with a password to access particular resources.

While still in the *[global]* section, let's move on to printers. If you use the [Common UNIX Printing System](https://web.archive.org/web/20081010131954/http://www.cups.org/) (CUPS) (which most distributions default to), the only thing you need to do to have Samba recognize your printers is set the following lines accordingly:

```
    printing = cups
    printcap name = cups
```

Since you may be configuring these printers (and perhaps other resources) to be accessible without user authentication, it is very important that you restrict access to only known and trusted hosts - the computers in your household. Consult your router's manual for instructions on assigning specific IP addresses to each computer in your home network. Once you have a list of trusted hosts, enter them into the following lines in the `[global]` section:

```
    hosts allow = computer1 computer2 computerN
    hosts deny = ALL
```

Although you have specified that `ALL` hosts be denied, any host listed on the `hosts allow` line will still be given access. The format of the IP addresses assigned to each computer by your router will vary. For instance, if machines on your local network are given addresses of the format `192.168.0.x`, the following lines will restrict Samba access to local hosts:

```
hosts allow = 192.168.0.
hosts deny = ALL
```

Note that the final digit of the IP address was left off on the `hosts allow` line. This specifies that any IP address in that range be allowed. For additional security against external access, look into [blocking Samba ports with a firewall](https://web.archive.org/web/20081010131954/http://us4.samba.org/samba/docs/man/Samba-HOWTO-Collection/securing-samba.html#firewallports).

## Sharing directories and printers

It's time to move beyond `[global]` and configure specific shared resources. Begin with the `[homes]` section. By default, your distribution may have this section configured to allow users to access their home directory on the machine running the Samba server.

If you have `security = share` set, this feature may not work as expected and users may be presented with home directories without logging in. If you are the only one with a home directory on the machine running the Samba server anyway, which is likely in a home network environment, it is advisable to remove or comment out (using hash marks or semicolons) the `[homes]` section and add any useful directories as shared resources individually later on.

Now you can begin sharing specific directories. Use this as a template for a publicly shared folder for which it is not necessary for users to be authenticated:

```
[Share Name]
path = /location/of/directory
guest ok = yes
browseable = yes
read only = no
```

`Share Name` is whatever title you choose (to the client accessing your server, this will appear to be the name of the shared directory). The `guest ok = yes` line is what specifies this share as publicly accessible. The `browseable = yes` line will make the share appear available to all users. Set `browseable = no` to force users to manually type in the share name to access it. Of course, you can set `read only = yes` to restrict users from make changes to the directory remotely.

Use this as a template for private shares that users must enter a password to access:

```
[Share Name]
path = /location/of/directory
    valid users = user
    read only = yes
browseable = no
```

Here, `user` is the user name on the machine running the Samba server of the person with access privileges to the share. Use these two templates to add shares for all the files users may want to access from the server machine.

Your server should be fully configured now. With what you added to the defaults provided by your distribution, your completed *smb.conf* should look something like this:

```
[global]
security = share
workgroup = HOME
server string = %h server
log file = /var/log/samba/log.%m
max log size = 1000
dns proxy = No
hosts allow = 192.168.0.
hosts deny = ALL
printing = cups
printcap name = cups

[printers]
path = /var/spool/samba
printable = Yes
browseable = No

[print\$]
path = /var/lib/samba/printers

[Public Directory]
path = /Public/Files
guest ok = yes
read only = no
browseable = yes

[Private Directory]
path = /private/files/
valid users = me
read only = yes
browseable = no
```

Before you leave the server machine you have a few more quick chores. First, enter any users that will be accessing the Samba server into the following command:

`smbpasswd -a user`

You will be prompted to enter a Samba password for each user. You can change the password at any time by logging in as the desired user and running `smbpasswd`. Now restart your Samba server using this command:

`/etc/init.d/samba restart`

## Accessing Samba shares from Windows clients

Head over to a Windows machine to try out your new setup. Your new server should appear in Windows' My Network Places (look for the shortcut on your desktop, by default). Alternatively, open the Start menu and click "Run...", then enter:

`\\\\server`

Replacing `server` with the name or IP address of the machine running your Samba server. A Windows Explorer window with the browseable shares from your server should open up. If you've made a non-browseable share, access it using this link:

`\\\\server\\share name`

Is is easy to make shared directories more accessible. In Windows XP, right click on the share in Explorer and choose "Map Network Drive..." You will be able to assign them a drive letter, such as Z:, so that they may be easily found in My Computer, even after a reboot.

In my testing on Windows XP with the security level set to `share`, printers are automatically be detected and available to use from the Windows machine. With `user` level security set, it was necessary to log into the server in a Windows Explorer window before trying to print. Your experience on other versions of Windows may vary.

## Accessing SMB/CIFS shares from other Linux machines

Samba and Windows shares can be easily accessed from the default file managers of both Gnome and KDE. We'll begin with accessing shares from Nautilus in Gnome. Open Nautilus and go to File -> Connect to Server.

Choose "Windows share" from the listbox and enter the server name or IP address of your Samba server. You can also click the "Browse Network" button and look in the "Windows Network" directory to search for the server manually. Click "Connect" and a Nautilus window will open with the browseable resources of your Samba server.

Accessing Samba shares with Konqueror is just as simple. To browse for your server, enter the URL *remote:/* in Konqueror. For direct access, type the URL of the server in directly in this format:

`smb://user@server/share`

Note that *user* and *share* are optional criteria.

Configuring printers over Samba is similarly easy in both these desktop environments. In Gnome, go to System -> Administration -> Printing. In the printer configuration application, select Printer -> Add printer. You will be prompted for your password. In the add printer wizard, select "Network Printer" and then "Windows Printer SMB" from the listbox. You will be prompted for a user name and password on your Samba server. Identify your Host and Printer on the Samba server and then move on to the next screen. Select your printer model and then click Apply.

To do the same in KDE, open the configuration center by launching the command `kcontrol`. Navigate to the Printers module and go to Add -> Add Printer/Class... In the resulting dialog, click Next and then select "SMB shared printer (Windows)." Click Next again and configure the username and password of a "Normal account," if using `user` level security. Click Next another time and then Scan to browse for your Samba server.

Alternatively, enter the server details manually. On the next screen, select your printer model from the list. Click through the next few screens and give your networked printer a title to finish up.

## Troubleshooting

If you've experienced any problems getting any of this functionality to work, turn to the [Samba troubleshooting checklist](https://web.archive.org/web/20081010131954/http://us3.samba.org/samba/docs/man/Samba-HOWTO-Collection/diagnosis.html). A quick trick borrowed from that document for testing your Samba configuration file for obvious errors is to run the following command:

`testparm smb.conf`

Again, the exact path of your *smb.conf* may vary by distribution.

We have only explored basic Samba functionality here, tailored for a home network. More extreme usage scenarios are addressed in detail in the [Samba by example guide](https://web.archive.org/web/20081010131954/http://us3.samba.org/samba/docs/man/Samba-Guide/).
