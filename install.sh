#! /bin/bash

AGENT_PATH=~/Library/LaunchAgents/com.cjeon.restore.preferences.plist
SCRIPT_PATH=~/42preferences/import.sh
sed -e "s;{};$SCRIPT_PATH;g" com.cjeon.restore.preferences.plist > $AGENT_PATH
launchctl load $AGENT_PATH