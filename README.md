# Atmega88-Stepper-controller-puls-generator
quick circuit on protoboard to test a chinese stepper driver

Here are the files for my quick stepper controller
It is not a motor driver, but a circuit which can generate signals for a driver board.
- clock/pulses for stepping
- Enable line, with option to invert the signal with a jumper
  The uC stops the pulse signal when the enable switch is off, but keeps the enable signal to the driver active
- Direction line, simple independent on/off signal
 
The code is an Atmel Studio 7 project, written in assembly
The schematics were made in KiCad 4.01





