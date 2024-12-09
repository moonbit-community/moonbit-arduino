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
// along with this program. If not, see <https://www.gnu.org/licenses/>.
//
// For inquiries, you can contact us via e-mail at jichuruanjian@idea.edu.cn.

///|
pub(all) enum PinMode {
  INPUT
  OUTPUT
  PULLUP
  INPUT_PULLUP
  PULLDOWN
  INPUT_PULLDOWN
  OPEN_DRAIN
  OUTPUT_OPEN_DRIN
  ANALOG
}

///|
pub(all) enum DigitalValue {
  LOW
  HIGH
}

///|
pub fn DigitalValue::from_int(val : Int) -> DigitalValue {
  match val {
    0 => LOW
    1 => HIGH
    _ => abort("")
  }
}

///|
pub fn DigitalValue::to_int(self : DigitalValue) -> Int {
  match self {
    LOW => 0
    HIGH => 1
  }
}

///|
pub fn DigitalValue::to_int8(self : DigitalValue) -> Int {
  match self {
    LOW => 0
    HIGH => 1
  }
}

///|
pub extern "C" fn builtin_led() -> Int = "builtin_led"

///|
fn PinMode::to_int(self : PinMode) -> Int {
  match self {
    INPUT => 0x01
    OUTPUT => 0x03
    PULLUP => 0x04
    INPUT_PULLUP => 0x05
    PULLDOWN => 0x08
    INPUT_PULLDOWN => 0x09
    OPEN_DRAIN => 0x10
    OUTPUT_OPEN_DRIN => 0x13
    ANALOG => 0xC0
  }
}

// int digitalRead(uint8_t pin)
///|
extern "C" fn __digitalRead(pin : Int) -> Int = "digitalRead"

///|
pub fn digitalRead(pin : Pin) -> DigitalValue {
  DigitalValue::from_int(__digitalRead(pin.to_int8()))
}

// void digitalWrite(uint8_t pin, uint8_t val)
///|
extern "C" fn __digitalWrite(pin : Int, val : Int) = "digitalWrite"

///|
pub fn digitalWrite(pin : Pin, val : DigitalValue) -> Unit {
  __digitalWrite(pin.to_int8(), val.to_int8())
}

// void pinMode(uint8_t pin, uint8_t mode)
///|
extern "C" fn _pinMode(pin : Int, mode : Int) = "pin_mode"

///|
pub fn pinMode(pin : Pin, mode : PinMode) -> Unit {
  _pinMode(pin.to_int8(), mode.to_int())
}

///|
pub fn test_bytes(data : Bytes) -> Unit {
  println(data)
}
