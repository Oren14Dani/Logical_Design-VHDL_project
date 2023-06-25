# Logical_Design-VHDL_project
Virtual implementation of logic circuits based on hardware components‎.

## General description
+ The system picks up a string of characters in asynchronous serial communication and then transmits the string back in
 asynchronous serial communication in reverse order (from end to beginning). This means that the information will be
 transmitted in reverse order relative to the order in which it is received.
 For example, if the string "kcuL dooG" is received, the string that will be transmitted,
 received and displayed on the smartphone or tablet will be: "Good Luck".

## Technical description
+ The system will operate from a single clock of 27MHz.
+ The system wakes up in idle mode.
+ Pressing the MODE button switches the system from Receive mode to Broadcast mode.
  If there is no information to broadcast, the system will remain in reception mode and 
  will not switch to broadcast mode.
+ RESET – set to be Active Low.
+ The first press of the MODE button will switch the system from idle mode to reception mode.
+ In reception mode, the system waits to receive serial data from the BT module. 
 The received data will be stored in the kit's FPGA-external SRAM.
+ In broadcast mode, the system will transmit all information stored in memory.
  At the end of the transmission of all information, the system will return to reception mode
  and will be ready to receive new information.
+ The maximum number of characters that can be received will be defined as generic and in 
 any case will not exceed 4095. Additional information that reaches beyond the maximum number
 of characters will not be written to memory and will not be transmitted later (the
 information will be thrown away).
+ The Baud Rate to communicate with the HC-05 module will be 9600 BPS.
+ The 7-segment display appears at any given moment, and the number of bytes that have been
 received and are currently waiting for transmission (at the end of the data transmission,
 the number displayed on the display will be 0000).

## LED indicator
LED1 will turn on whenever the system is active.
LED2 will only turn on when the system is in reception mode and will be off in any other mode.
LED3 will turn on only when the system is in transmission mode and will be turned off in any other mode.
LED4 will only turn on when MODE is pressed.
