#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

source $SCRIPT_DIR/etc/vars.sh
source $SCRIPT_DIR/etc/wizard.sh

sudo service klipper stop

cp -rf $SCRIPT_DIR/config/* ~/printer_data/config/
mv $SCRIPT_DIR/config/printer_$PRINTER.cfg ~/printer_data/config/printer.cfg

sudo service klipper start
