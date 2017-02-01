#!/bin/sh
# add printer to cups

printer_name=""
printer_fname=""
printer_loc=""
loop="y"
creatsvcfile=""

while [ $loop == "y" ] || [ $loop == "Y" ]
do
	echo "Printer Display Name: (This should be human-readable)"
	read printer_name
	echo "Printer filename: (This cannot have spaces)"
	read printer_fname
	echo "Printer Location:"
	read printer_loc
	echo " adding lpadmin -p $printer_fname -L "$printer_loc" -E -v dnssd://$printer_name._ipp._tcp.local. -P /System/Library/Frameworks/ApplicationServices.framework/Frameworks/PrintCore.framework/Resources/Generic.ppd"
	lpadmin -p $printer_fname -L "$printer_loc" -E -v dnssd://$printer_fname._ipp._tcp.local. -P /System/Library/Frameworks/ApplicationServices.framework/Frameworks/PrintCore.framework/Resources/Generic.ppd
	if [ -e /opt/local/etc/avahi/services/$printer_fname.service ]
		then
		echo "Service file found for printer."
	else
		echo "No Service file found; printer is not currently set up for AirPlay. Create Service file now? Enter [Y/y]es or any other character for no."
		read creatsvcfile
		if [ $creatsvcfile == "y" ] || [ $creatsvcfile == "Y" ]
			then
			echo "<?xml version='1.0' encoding='UTF-8'?>
<!DOCTYPE service-group SYSTEM 'avahi-service.dtd'>
<service-group>
  <name replace-wildcards='yes'>'Air Print: $printer_name'</name>
  <service>
    <host-name>riaentmbjr-p01.advisory.com</host-name>
    <type>_ipp._tcp</type
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
</service-group>" > "/opt/local/etc/avahi/services/$printer_fname.service"
		fi
	fi


	echo "Add printer? Enter [Y/y]es or any other character for no"
	read loop
done
