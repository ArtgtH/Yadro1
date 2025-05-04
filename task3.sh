#!/bin/bash
if [ $# -ne 2 ]; then
	echo "Некорректное обращение к ${0}"
fi

grep -n "${2}" "${1}"