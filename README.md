# PIC16F877A_ADC_LCD_Display

This embedded system project reads analog signals from two ADC channels of the PIC16F877A microcontroller and displays the corresponding digital values on a 16x2 LCD. It's a beginner-friendly demonstration of ADC and LCD interfacing using Embedded C with MPLAB and the XC8 compiler.

---

## 📌 Features

- Uses **ADC channels AN0 and AN2**
- Displays values on **16x2 LCD**
- Shows real-time digital conversion
- Configurable ADC initialization function
- Clean LCD display with unit (`°C`) example

---

## 📷 Project Output

ADC0 = 1023°C
ADC2 = 0000°C 


---

## 🧰 Components Used

| Component           | Quantity |
|--------------------|----------|
| PIC16F877A MCU      | 1        |
| 16x2 LCD Display    | 1        |
| Potentiometer (or any analog input) | 2 |
| 10kΩ Resistor       | 2        |
| Breadboard + Jumper Wires | As required |
| Power Supply (5V)   | 1        |
| MPLAB X IDE + XC8 Compiler | - |

---

## 🔌 Pin Configuration

| Signal     | PIC16F877A Pin |
|------------|----------------|
| LCD RS     | RC0            |
| LCD EN     | RC1            |
| LCD D4-D7  | RD0-RD3        |
| ADC CH0    | RA0 (AN0)      |
| ADC CH2    | RA2 (AN2)      |

---

## 🧠 Code Explanation

- `ADC_inti(ch)`: Initializes a specific analog channel
- `read_Adc(ch)`: Reads digital value from ADC
- `LCD_Init()`: Sets up the LCD in 4-bit mode
- `display(value)`: Prints 4-digit number with `°C` on LCD

---

## ⚙️ How to Run

1. Open MPLAB X IDE.
2. Create a new XC8 project for PIC16F877A.
3. Copy the provided code into `main.c`.
4. Connect the hardware as per the pin mapping.
5. Compile and upload the code using a PIC programmer (e.g., PICkit3/4).
6. Power up the circuit and observe the ADC values on the LCD.

---

## 📦 Folder Structure

PIC16F877A_ADC_LCD_Display/
├── main.c
├── README.md


---

## 📝 Notes

- Ensure you connect the analog input signals within 0–5V range.
- Adjust the reference voltage settings if needed for more precision.
- LCD contrast may need a potentiometer adjustment.

---

## 📚 License

This project is released under the [MIT License](LICENSE).

---

## 🙋‍♂️ Author

**Sanket M.**  
Embedded Systems Enthusiast | Microcontroller Developer

