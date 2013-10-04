# Backup Buddy

![Backup Buddy](/Data/White.png)

A simple script to automatically backup folders.

You can specify a list of folders that'll be compressed (using 7Zip) and then backed up every 15 minutes or so (you can modify the setting) to your backup folder (you can specify where you want your backups to be saved).

<!-- Five snapshots of the backups are maintained. So the older ones are deleted as the new ones pop in. -->

## Table of Contents

* [Installation](#install)
* [Usage Instructions](#usage)
* [Stuff to do](#todo)
* [Changelog](#changelog)

## <a name="install"></a>Installation

Firstly, you'll need to have [Autohotkey](http://l.autohotkey.net/AutoHotkey_L_Install.exe) installed.

Once you've done that, download the [zip](https://github.com/dufferzafar/backup-buddy/archive/master.zip), extract the contents, and Run Backup-Buddy.ahk

Have fun!

## <a name="usage"></a>Usage Instructions

The script is being coded as you are reading this.

Currently it's just this readme. So...

## <a name="todo"></a>Todo

* Core Features - v1.
  * Multiple source directories to backup.
  * Simple 7Zip Compression.
  * Timer - 15mins or something.
  * Filenames should have a timestamp.
  * Open Backup Directory. Tray Menu.

* Later - v2.
  * Maintain five such snapshots. Setting.
  * Backup only if changes have ocurred. WatchDirectory()

* Exclusion Lists
  * Default Exclusions - System files.
  * User's List - Files, Folder Patterns
  * 7Zip -x switch

## <a name="changelog"></a>Changelog

* Basic Readme Written. See [this](http://tom.preston-werner.com/2010/08/23/readme-driven-development.html).

