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

// void delay(uint32_t ms)
///|
pub extern "C" fn delay(ms : UInt) = "delay"

///|
pub extern "C" fn delayMicroseconds(us : Int) = "delayMicroseconds"

///|
pub extern "C" fn micros() -> UInt64 = "micros"

///|
pub extern "C" fn millis() -> UInt64 = "millis"
