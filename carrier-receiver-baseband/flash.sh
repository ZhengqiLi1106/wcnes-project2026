picotool reboot -uf; # reboot into BOOTSEL mode
sleep 5;
picotool load build/carrier_receiver_baseband.elf; # Load the elf file
picotool reboot;
sleep 2;
putty -serial COM27 -sercfg 115200,8,n,1,N
#putty -serial COM30 -sercfg 115200,8,n,1,N
#picocom -b 115200 ; # Connect to see the output CTRL+A CTRL+X to exit picocom

