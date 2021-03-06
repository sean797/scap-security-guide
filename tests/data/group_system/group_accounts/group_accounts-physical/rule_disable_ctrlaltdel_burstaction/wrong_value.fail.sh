#!/bin/bash

# profiles = xccdf_org.ssgproject.content_profile_ospp-rhel7

if grep -q "^CtrlAltDelBurstAction=" /etc/systemd/system.conf; then
	sed -i "s/^CtrlAltDelBurstAction.*/CtrlAltDelBurstAction=poweroff-immediate/" /etc/systemd/system.conf
else
	echo "CtrlAltDelBurstAction=poweroff-immediate" >> /etc/systemd/system.conf
fi
