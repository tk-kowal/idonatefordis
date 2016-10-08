#!/usr/bin/env bash

donatedir=~/.local/donate
donationfile="$donatedir/donation"

command_not_found_handle ()
{
  sync

  new_owed=$( echo "$owed + 0.50" | bc);

  echo "Command Not Found: You're now donating \$$new_owed";
  echo "owed=$new_owed" > "$donationfile";
}

function donated {
  sync

  if [ -z "$1" ]
  then
    echo "Usage: donated <amount> - You currently owe: \$$owed";
  else
    new_owed=$( echo "$owed - $1" | bc);
    echo "Well done! You now owe $new_owed";
    echo "owed=$new_owed" > "$donationfile";
  fi
}

function sync {
  if [ ! -f $donationfile ]
  then
    mkdir -p $donatedir && touch $donationfile;
    echo "owed=0" > $donationfile;
  fi
  source "$donationfile"
}
