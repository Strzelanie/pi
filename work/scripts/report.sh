#!/bin/bash
# Pobranie parametru dla skryptu oraz zdefiniowanie dry run
P1="${1:-}"
DRYRUN=0

# Sprawdzenie, czy zostal podany parametr
if [[ -z "$P1" ]]; then
	echo "Prosze podac parametr"
	exit 2
fi

# Sprawdzenie, czy zostal uruchomiony dry run, rowniez sam tryb
if [[ "$P1" == "-n" ]]; then
	DRYRUN=1
	P2="${2:-}"
	if [[ -z "$P2" ]]; then
		echo "Prosze podac parametr"
		exit 2
	fi
	if [[ ! -d "$P2" ]]; then
		echo "Podany katalog nie istnieje"
		exit 1
	fi
	echo "DRY RUN - podglad"
	date +"%F %T"
	du -sh "$P2"/* | sort -rh | head -5
	exit 0
fi

# Sprawdzenie, czy katalog istnieje
if [[ ! -d "$P1" ]]; then
	echo "Podany katalog nie istnieje"
	exit 1
fi

# Data oraz ranking top 5 podkatalogow
date +"%F %T"
du -sh "$P1"/* | sort -rh | head -5
