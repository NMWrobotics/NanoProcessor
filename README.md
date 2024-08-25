
# NanoProcessor
## Nano Processor Instructions 
### Input and Output Mapping of the Basys 3 board. 
#### Inputs 
Reset button is set to BTNC (center button of the 5 push buttons)
#### Outputs 
  - There are mainly 3 outputs from the Nano Processor,
    - Value of the Register 7
    - Overflow flag of the Adder/Subtractor Unit
    - Zero flag of the Adder/Subtractor Unit
  - Value of the Register 7 will be displayed on, 
    - Decimal value on 1 st 7-Segment Display (Left most display of the 4 7-Segment displays)
    - Binary value on LD0, LD1, LD2, LD3 LEDs (MSB – LD3, LSB – LD0) 
- Overflow flag is indicated on LD15 LED.
- Zero flag is indicated on LD14 LED.
  
![Untitled](https://github.com/user-attachments/assets/e3bfa066-1100-4cab-822c-adc1019ec394)

## The behavior of the Nano processor 
- Clock frequency of the Nano Processor is 2Hz (Slow down to see the changes clearly)

- Value of the Register 7 will be the output of the Nano Processor.
- Instructions of the Nano Processor is given to calculate the sum of integers between 1-2.
- When you program the Basys 3 board, the Initial value of the register 7 - 0 will be displayed in the 7 Segment Display.
- Then Register 1 value – 3, Register 2 value 1
- Then the Register 2 value will be Negated. Now Register 2 value  is (-1)
- Now Register 1 value and Register 7 value will be added and stored in Register 7. 
  - 0 + 3 = 3. 
  - 3 will be displayed. 

- Now Register 1 and Register 2 Will be added and stored in Register 1. 
  - 3 -1 = 2.
- Again Register 1 value and Register 7 value will be added and stored in Register 7.
  - 3 + 2 = 5.
  - 5 will be displayed. 

- Again Register 1 and Register 2 Will be added and stored in Register 1. 
  - 2 -1 = 1.
- Finally Register 1 value and Register 7 value will be added and stored in Register 7. 
  - 5 + 1 = 6. 
  - 6 will be displayed. 

- Once this is over again Register 7 value will be 0 and will be repeated the above process over and over again.

- You can Reset the program anytime by pressing Reset button.


