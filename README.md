# SoulOfKlipper
## Personal Klipper Config for all my Printers

### Usage

1. Backup old config
2. Change to config folder
3. Delete default config
4. Pull repo
5. Create Symlink from printer_somePrinter.cfg to printer.cfg for current printer

``` sh
sudo service klipper stop
cd ~/printer_data
mv ./config ./config.bak
mkdir ./config
cd ./config
git clone https://github.com/SoulOfNoob/SoulOfKlipper.git .
ln -s printer_VoronZero.cfg printer.cfg
sudo service klipper start
```
