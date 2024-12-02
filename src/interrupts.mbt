// MoonBit Arduino Binding
// Copyright (C) 2024 International Digital Economy Academy
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program. If not, see .
//
// For inquiries, you can contact us via e-mail at jichuruanjian@idea.edu.cn.

///|
pub extern "C" fn interrupts() -> Unit = "arduino_interrupts"

///|
pub extern "C" fn noInterrupts() -> Unit = "noInterrupts"

///|
pub(all) enum InterruptMode {
  RISING
  FALLING
  CHANGE
  ONLOW
  ONHIGH
  ONLOW_WE
  ONHIGH_WE
}

///|
pub fn InterruptMode::to_int(self : InterruptMode) -> Int {
  match self {
    RISING => 0x01
    FALLING => 0x02
    CHANGE => 0x03
    ONLOW => 0x04
    ONHIGH => 0x05
    ONLOW_WE => 0x0C
    ONHIGH_WE => 0x0D
  }
}

// void attachInterrupt(uint8_t pin, std::function<void(void)> intRoutine, int mode)
///|
extern "C" fn __attachInterrupt(
  pin : Int,
  intRoutine : () -> Unit,
  mode : Int
) -> Unit = "arduino_attach_interrupt_arg"

///|
pub fn attachInterrupt(
  pin : Pin,
  intRoutine : () -> Unit,
  mode : InterruptMode
) -> Unit {
  __attachInterrupt(pin.to_int8(), intRoutine, mode.to_int())
}

// void detachInterrupt(uint8_t pin)
///|
extern "C" fn __detachInterrupt(pin : Int) -> Unit = "detachInterrupt"

///|
pub fn detachInterrupt(pin : Pin) -> Unit {
  __detachInterrupt(pin.to_int8())
}

///|
extern "C" fn __digitalPinToInterrupt(pin : Int) -> Int = "arduino_digital_pin_to_interrupt"

///|
pub fn digitalPinToInterrupt(pin : Pin) -> Pin {
  Pin::from_int(__digitalPinToInterrupt(pin.to_int8()))
}
