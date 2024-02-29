#/bin/sh!

PRINTER=AM8
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

sudo service klipper stop

cp -rf $SCRIPT_DIR/config/* ~/printer_data/config/
mv printer_$PRINTER.cfg printer.cfg

sudo service klipper start
