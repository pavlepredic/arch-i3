#!/bin/bash                                                                                                                                                                    
SYSFS="/sys/devices/platform/thinkpad_acpi/bluetooth_enable"                                                                                                                         
case "$(cat "$SYSFS")" in                                                                                                                                                            
  0)                                                                                                                                                                                 
    echo 1 > "$SYSFS"                                                                                                                                                                
    ;;                                                                                                                                                                               
  1)                                                                                                                                                                                 
    echo 0 > "$SYSFS"                                                                                                                                                                
    ;;                                                                                                                                                                               
esac
