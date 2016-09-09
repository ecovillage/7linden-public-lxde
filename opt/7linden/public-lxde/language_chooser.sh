#!/bin/sh -e

# show zenity dialog only when launched from greeter
ONLYGUEST=true
for U in $(users); do
    if [ "${U%%-*}" != 'guest' ]; then
        ONLYGUEST=false
        break
    fi
done

if $ONLYGUEST && [ -x /usr/bin/zenity ]; then
    guestlang=$( zenity --list --title 'Select language / Sprache wählen' \
      --text 'Select language for the guest session / Wähle eine Sprache' --radiolist \
      --column 'Pick' --column '' TRUE 'English' FALSE 'Deutsch' )
    if [ "$guestlang" = 'English' ]; then
        echo 'export LANGUAGE=en_US' >> "$HOME/.profile"
        echo 'export LANG=en_US.UTF-8' >> "$HOME/.profile"
    elif [ "$guestlang" = 'Deutsch' ]; then
        echo 'export LANGUAGE=de' >> "$HOME/.profile"
        echo 'export LANG=de_DE.UTF-8' >> "$HOME/.profile"
    fi
fi

exec /usr/lib/lightdm/lightdm-guest-session "$@"

# Put this in /etc/lightdm/lightdm.conf.d/50-choose-guest-language.conf
#[Seat:*]
#guest-wrapper=/etc/guest-session/choose-language-wrapper.sh
