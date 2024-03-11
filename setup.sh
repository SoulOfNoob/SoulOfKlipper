#!/bin/bash

TIMESTAMP=$(date +%s)
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
DST_CONFIG_DIR=~/printer_data/config
SRC_CONFIG_DIR=$SCRIPT_DIR/config

source $SCRIPT_DIR/etc/vars.sh
source $SCRIPT_DIR/etc/wizard.sh

sudo service klipper stop

# Override all universal files
mkdir -p $DST_CONFIG_DIR/PrinterOverrides
cp -rf $SRC_CONFIG_DIR/PrinterOverrides/$PRINTER $DST_CONFIG_DIR/PrinterOverrides/
mkdir -p $DST_CONFIG_DIR/OrcaSlicerPresets
cp -rf $SRC_CONFIG_DIR/OrcaSlicerPresets/$PRINTER.* $DST_CONFIG_DIR/OrcaSlicerPresets/
cp -rf $SRC_CONFIG_DIR/UniversalMacros $DST_CONFIG_DIR/
cp -rf $SRC_CONFIG_DIR/printer_$PRINTER.cfg $DST_CONFIG_DIR/
        
# Don't override printer.cfg it might have changed locally
cp -n $DST_CONFIG_DIR/printer_$PRINTER.cfg $DST_CONFIG_DIR/printer.cfg

sudo service klipper start
