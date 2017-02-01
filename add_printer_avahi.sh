#!/bin/sh
# new printer script
# for riabonjur/internal abco use

printer_name=$1

loop="y"
mkdir -p "services"

while [ $loop == "y" ] || [ $loop == "Y" ]
do
echo "Printer name:"
    read printer_name
echo "<?xml version='1.0' encoding='UTF-8'?>
<!DOCTYPE service-group SYSTEM 'avahi-service.dtd'>
<service-group>
  <name replace-wildcards='yes'>Mobile:$printer_name</name>
  <service>
    <host-name>osxtxupd1.advisory.com</host-name>
    <type>_ipp._tcp</type>
    <subtype>_universal._sub._ipp._tcp</subtype>
    <port>631</port>
    <txt-record>txtvers=1</txt-record>
    <txt-record>qtotal=1</txt-record>
    <txt-record>Transparent=T</txt-record>
    <txt-record>URF=W8,SRGB24,RS300,DM1,CP255</txt-record>
    <txt-record>rp=printers/$printer_name</txt-record>
    <txt-record>note=Dell 2350dn Laser Printer</txt-record>
    <txt-record>product=(GPL Ghostscript)</txt-record>
    <txt-record>printer-state=3</txt-record>
    <txt-record>printer-type=0x8090dc</txt-record>
    <txt-record>pdl=application/octet-stream,application/postscript,image/urf,application/vnd.cups-command,application/vnd.cups-postscript,application/vnd.cups-raw</txt-record>
  </service>
</service-group>" > "services/$printer_name.service"
echo "Add printer? Enter [Y/y]es or any other character for no"
    read loop

done