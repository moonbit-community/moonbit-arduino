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
extern "C" fn __tone(pin : Int, frequency : Int, duration : Int64) -> Unit = "arduino_tone"

///|
pub fn tone(pin : Pin, frequency : Int, duration~ : Int64 = 0) -> Unit {
  __tone(pin.to_int8(), frequency, duration)
}
