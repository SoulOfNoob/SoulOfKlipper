#!/bin/bash

SECTION_PREFIX="${RED} Wizard "

printf "${HORIZONTAL_LINE}"
printf "             Please Select Printer"
printf "${HORIZONTAL_LINE}"
printf "1) VoronZero ${NL}"
printf "2) AM8 ${NL}"
printf "3) 4MAX ${NL}"
printf "${HORIZONTAL_LINE}"
read -r $printer_int

case $printer_int in
    "1")
        PRINTER="VoronZero"
        ;;
    "2")
        PRINTER="AM8"
        ;;
    "3")
        PRINTER="4MAX"
        ;;
    *)
        printf "${LOGPREFIX}|${SECTION_PREFIX}| ${ERROR} ${YELLOW} '${printer_int}' is Not a valid Selection ${NL}"
        exit
        ;;
esac