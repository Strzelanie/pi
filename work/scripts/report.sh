#!/bin/bash
# Pobranie parametru 1 dla skryptu
P1="${1:-}"

# Sprawdzenie, czy zostal podany parametr
if [[ -z "$P1" ]]; then
	echo "Prosze podac parametr"
	exit 2
fi

# Sprawdzenie, czy zostal uruchomiony dry run, rowniez sam tryb
if [[ "$P1" == "-n" ]]; then
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
	du -sh "$P2"/* 2>/dev/null | sort -rh | head -5
	exit 0
fi

# Sprawdzenie, czy katalog istnieje
if [[ ! -d "$P1" ]]; then
	echo "Podany katalog nie istnieje"
	exit 1
fi

# Data oraz ranking top 5 podkatalogow
date +"%F %T"
du -sh "$P1"/* 2>/dev/null | sort -rh | head -5
