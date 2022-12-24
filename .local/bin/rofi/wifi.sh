#!/bin/bash
# https://github.com/shvedes/dotfiles
# original: https://github.com/ericmurphyxyz/dotfiles/blob/master/.local/bin/wifimenu

ICON="$HOME/.local/bin/notifications/icons/wifi.png"
notify-send -r 996 -i $ICON "Getting Wi-Fi networks..."
WIFI_LIST=$(nmcli --fields "SECURITY,SSID" device wifi list | sed 1d | sed 's/  */ /g' | sed -E "s/WPA*.?\S/ /g" | sed "s/^--/ /g" | sed "s/  //g" | sed "/--/d")
notify-send -r 996 -i $ICON "Done"

CONNECTED=$(nmcli -fields WIFI g)
if [[ "$CONNECTED" =~ "enabled" ]]; then
	TOGGLE="睊  Disable Wi-Fi"
elif [[ "$connected" =~ "disabled" ]]; then
	TOGGLE="直  Enable Wi-Fi"
fi

CHOSEN_NETWORK=$(echo -e "$TOGGLE\n$WIFI_LIST" | uniq -u | rofi -dmenu -i -selected-row -theme gruvbox-dark -font 'JetBrainsMono 14' -password 1 -p "Wi-Fi SSID: " )
CHOSEN_ID=$(echo "${CHOSEN_NETWORK:3}" | xargs)

if [ "$CHOSEN_NETWORK" = "" ]; then
	exit
elif [ "$CHOSEN_NETWORK" = "直  Enable Wi-Fi" ]; then
	nmcli radio wifi on
elif [ "$CHOSEN_NETWORK" = "睊  Disable Wi-Fi" ]; then
	nmcli radio wifi off
else
	SUCCESS_MESSAGE="You are now connected to the Wi-Fi network \"$CHOSEN_ID\"."
	SAVED_CONNECTIONS=$(nmcli -g NAME connection)
	if [[ $(echo "$SAVED_CONNECTIONS" | grep -w "$CHOSEN_ID") = "$CHOSEN_ID" ]]; then
		nmcli connection up id "$CHOSEN_ID" | grep "successfully" && notify-send "Connection Established" "$SUCCESS_MESSAGE"
	else
		if [[ "$CHOSEN_NETWORK" =~ "" ]]; then
			WIFI_PASSWORD=$(rofi -dmenu -theme gruvbox-dark -password -p "Password: " )
		fi
		nmcli device wifi connect "$CHOSEN_ID" password "$WIFI_PASSWORD" | grep "successfully" && notify-send "Connection Established" "$SUCCESS_MESSAGE"
	fi
fi
