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
pub extern "C" fn bit(n : Int) -> Int = "bit"

///|
pub extern "C" fn bitClear(x : Int, n : Int) -> Int = "bitClear"

///|
pub extern "C" fn bitRead(x : Int, n : Int) -> Int = "bitRead"

///|
pub extern "C" fn bitSet(x : Int, n : Int) -> Int = "bitSet"

///|
pub extern "C" fn bitWrite(x : Int, n : Int, b : Bool) -> Unit = "bitWrite"
