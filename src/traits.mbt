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
pub(open) trait ToInt {
  to_int(Self) -> Int
}

///|
pub(open) trait ToInt8 {
  to_int8(Self) -> Int
}

///|
pub impl ToInt8 for Byte with to_int8(self : Byte) -> Int {
  self.to_int()
}

///|
pub impl ToInt8 for Int with to_int8(self : Int) -> Int {
  self & 0xFF
}

///|
pub impl ToInt8 for Int64 with to_int8(self : Int64) -> Int {
  (self & 0xFF).to_int()
}

///|
pub(open) trait ToInt16 {
  to_int16(Self) -> Int
}

///|
pub impl ToInt16 for Int with to_int16(self : Int) -> Int {
  self & 0xFFFF
}

///|
pub impl ToInt16 for Int64 with to_int16(self : Int64) -> Int {
  (self & 0xFFFF).to_int()
}

///|
pub(open) trait FromInt {
  from_int(Int) -> Self
}

///|
pub(open) trait Floating: Number {
  is_nan(Self) -> Bool
}

///|
pub(open) trait Integer: Number {
  is_integer(Self) -> Bool
}

///|
pub impl Integer for Int with is_integer(_x : Int) -> Bool {
  true
}

///|
pub impl Integer for Int64 with is_integer(_x : Int64) -> Bool {
  true
}

///|
pub(open) trait Number: Compare {
  op_add(Self, Self) -> Self
  op_sub(Self, Self) -> Self
  op_mul(Self, Self) -> Self
  op_div(Self, Self) -> Self
  abs(Self) -> Self
  zero() -> Self
  one() -> Self
}

///|
pub impl Number for Int with zero() -> Int {
  0
}

///|
pub impl Number for Int64 with zero() -> Int64 {
  0
}

///|
pub impl Number for Float with zero() -> Float {
  0
}

///|
pub impl Number for Double with zero() -> Double {
  0
}

///|
pub impl Number for Int with one() -> Int {
  1
}

///|
pub impl Number for Int64 with one() -> Int64 {
  1
}

///|
pub impl Number for Float with one() -> Float {
  1
}

///|
pub impl Number for Double with one() -> Double {
  1
}
