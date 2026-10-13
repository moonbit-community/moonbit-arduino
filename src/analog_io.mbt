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

// uint16_t analogRead(uint8_t pin)

///|
extern "C" fn __analogRead(pin : Int32) -> Int32 = "analogRead"

///|
pub fn analogRead(pin : Pin) -> Int32 {
  __analogRead(pin.to_int8())
}

// extern void analogReadResolution(uint8_t bits) __attribute__((weak, alias("__analogReadResolution")));

///|
extern "C" fn __analogReadResolution(bits : Int32) -> Unit = "analogReadResolution"

///|
pub fn[T : ToInt8] analogReadResolution(bits : T) -> Unit {
  __analogReadResolution(bits.to_int8())
}

// void analogWrite(uint8_t pin, int value)

///|
extern "C" fn __analogWrite(pin : Int32, value : Int32) -> Unit = "analogWrite"

///|
pub fn analogWrite(pin : Pin, value : Int32) -> Unit {
  __analogWrite(pin.to_int8(), value)
}

// void analogWriteResolution(uint8_t pin, uint8_t resolution)

///|
extern "C" fn __analogWriteResolution(pin : Int32, resolution : Int32) -> Unit = "analogWriteResolution"

///|
pub fn[T : ToInt8] analogWriteResolution(pin : Pin, resolution : T) -> Unit {
  __analogWriteResolution(pin.to_int8(), resolution.to_int8())
}
