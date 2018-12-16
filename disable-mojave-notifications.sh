#!/bin/bash

/usr/bin/AssetCacheLocatorUtil
/usr/sbin/softwareupdate --reset-ignored
/usr/sbin/softwareupdate --ignore "macOSInstallerNotification_GM"
