# iDonateForDis

-----------------------

`Command Not Found: You're now donating $22.00`

Mistakes on the command line now add up... Trying to run commands that don't exist, whether on purpose or because your finger slipped adds 50 cents to your bill. This script __only tracks__ your total, it's up to you to donate occasionally to bring the total down to 0.

## Install

NOTE: Requires Bash Version 4+

1) To download the script run:
`curl -fsSO https://raw.githubusercontent.com/tk-kowal/idonatefordis/master/donate.sh`

2) Source the downloaded script in your _bashrc_:
`source path/to/script`

3) Verify it's working by running `donated` with no arguments. Output should be:
`Usage: donated <amount> - You currently owe: $0`


## Usage

### Make Mistakes

Anytime you try to run something that doesn't exist you'll see a message that looks like: `Command Not Found: You're now donating $.50` So just misspell stuff ya turkey!

### Check Balance

If you want to check how much you owe at the moment just run `donated` with no arguments.

### Pay Up

It's up to you to actually donate! When you do - just run `donated 24.50` where 20 is the amount that you donated.
