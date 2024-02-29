#/bin/sh!

cd ~/klipper/
sudo cp ./scripts/klipper-mcu.service /etc/systemd/system/
sudo systemctl enable klipper-mcu.service

cd ~/klipper/
make menuconfig

sudo service klipper stop

make flash

git clone https://github.com/Arksine/katapult ~/katapult
echo 'katapult' >> ~/printer_data/moonraker.asvc

sudo usermod -a -G tty pi

sudo service klipper start