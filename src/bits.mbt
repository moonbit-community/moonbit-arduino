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
pub extern "C" fn bit(n : Int32) -> Int32 = "bit"

///|
pub extern "C" fn bitClear(x : Int32, n : Int32) -> Int32 = "bitClear"

///|
pub extern "C" fn bitRead(x : Int32, n : Int32) -> Int32 = "bitRead"

///|
pub extern "C" fn bitSet(x : Int32, n : Int32) -> Int32 = "bitSet"

///|
pub extern "C" fn bitWrite(x : Int32, n : Int32, b : Bool) -> Unit = "bitWrite"
