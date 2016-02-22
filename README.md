# Atmega88-Stepper-controller-puls-generator
quick circuit on protoboard to test a chinese stepper driver

Here are the files for my quick stepper controller
It is not a motor driver, but a quick circuit which can generate signals for a driver board.
- clock/pulses for stepping
- Enable line, with option to invert signal
  The uC stops the pulse signal when the enable switch is off, but keeps the enable signal to the driver active
  A jumper can invert the signal
- Direction lines, simple independent on/off signal





