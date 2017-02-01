#!/usr/bin/perl 

$en0_info = `ifconfig en0 | grep "inet" | grep -v 127.0.0.1`; 
$en1_info = `ifconfig en1 | grep "inet" | grep -v 127.0.0.1`; 
$en5_info = `ifconfig en5 | grep "inet" | grep -v 127.0.0.1`; 
$vpn_info = `ifconfig utun0 | grep "inet" | grep -v 127.0.0.1`; 
$ext_info = `curl --silent http://checkip.dyndns.org | grep -Eo '([0-9]{1,3}\.){3}[0-9]{1,3}'`;
$airport_network = `/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport -I | awk -F: '/ SSID: / {print $2}' | sed -e 's/.*SSID: //'`; 
if($ext_info) { 
    $output .= "External: $ext_info"; 
} else {
    $output .= "External: OFFLINE \n";
} 
if($en0_info) { 
    $en0_info =~ /inet (.*) netmask/s; 
    $output .= "Airport: $1 \n"; 
    $output .= "SSID: $airport_network"; 
} else {
    $output .= "Airport: OFFLINE \n";
} 
if($en1_info) { 
    $en1_info =~ /inet (.*) netmask/s; 
    $en1_info = $1; 
    $output .= "TB Ethernet: $en1_info \n";
    
}# else { 
  #  $output .= "TB Ethernet: Unplugged";
#} 
if($en5_info) { 
    $en5_info =~ /inet (.*) netmask/s; 
    $en5_info = $1; 
    $output .= "Display Ethernet: $en1_info \n";
    
}# else { 
  #  $output .= "Display Ethernet: Unplugged";
#} 
if($vpn_info) { 

$vpn_info =~ /\> (.*) netmask/s; 

$output .= "VPN: $1 \n"; 

} else {

$output .= "VPN: offline \n";

}
print "$output";