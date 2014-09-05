# Backup Buddy v0.9

*Status: Not maintained anymore. Any improvements whatsoever now occur in: [dufferzafar/win-butler](https://github.com/dufferzafar/win-butler/blob/master/Data/buddy/backup.ahk)*

A script to automatically backup your folders.

You can specify a list of folders that'll be compressed (using 7Zip) and then backed up every 15 minutes or so (you can modify the setting) to your backup folder (you can specify where you want your backups to be saved).

[This](http://dufferzafar.engineerinme.com/blog/when-life-gives-you-lemons) is what made me write the script.

<!-- Five snapshots of the backups are maintained. So the older ones are deleted as the new ones pop in. -->

## Table of Contents

* [Installation](#install)
* [Usage Instructions](#usage)
* [Stuff to do](#todo)
* [Changelog](#changelog)

## <a name="install"></a>Installation

Firstly, you'll need to have [Autohotkey](http://l.autohotkey.net/AutoHotkey_L_Install.exe) installed.

Once you've done that, download the [zip](https://github.com/dufferzafar/backup-buddy/archive/master.zip), extract the contents.

You are now ready to use the script, but before you do that, read on...

## <a name="usage"></a>Usage Instructions

As of now, you'll have to manually edit the script to add the paths of the folders that you want to backup.

You'll also need to specify the path of the folder where the backups will be kept.

While you are at it, there are a few other settings that you can tweak too like the number of backups you want to keep (default five),
the password that'll be used to protect the backups (deafult: No password is used.)

Do that and run the script - backups will be performed at the period you've specified (default fifteen).

You can right-click the application's icon in tray menu to Pause/Resume Backups.

You can also Open the backups directory from the tray menu.

Have Fun!

## <a name="todo"></a>Todo

* Core Features - v1.
  * Add a real basic GUI for settings.

* Later - v2
  * Log Files.
  * Delete backups older than X (time)
  * Exclusion Lists - Files & Folders

* Settings GUI
  * Compression Method.
  * Directories
  * Timer
  * Password. Encrypt Headers.

* Notifications
  * During the backup process - Animate trayicon.
  * Errors Occurred.

* Backups Browser - v3
  * Restore a backup.
  * Merge/Update.

* WatchDirectory()
  * Backup only if changes have occurred.
  * Backup only those files which have changed.
  * Auto Backup when changes occur.

## <a name="changelog"></a>Changelog

* This script is now a part of Windows Butler.

* v0.9:

  * Multiple source directories.
  * 7Zip Compression.
  * Timer - 15mins or something.
  * Filenames have a timestamp.
  * Maintain five backup snapshots.
  * Passwords on backups.
  * TrayTip notification on backup complete.
  * Pause backup. Tray Menu.
  * Open Backup Directory. Tray Menu.

* Basic Readme Written. See [this](http://tom.preston-werner.com/2010/08/23/readme-driven-development.html).

[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/dufferzafar/backup-buddy/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

