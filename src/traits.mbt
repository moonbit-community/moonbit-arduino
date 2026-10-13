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
  fn to_int(Self) -> Int32
}

///|
pub(open) trait ToInt8 {
  fn to_int8(Self) -> Int32
}

///|
pub impl ToInt8 for Byte with fn to_int8(self : Byte) -> Int32 {
  self.to_int()
}

///|
pub impl ToInt8 for Int32 with fn to_int8(self : Int32) -> Int32 {
  self & 0xFF
}

///|
pub impl ToInt8 for Int64 with fn to_int8(self : Int64) -> Int32 {
  (self & 0xFF).to_int()
}

///|
pub(open) trait ToInt16 {
  fn to_int16(Self) -> Int32
}

///|
pub impl ToInt16 for Int32 with fn to_int16(self : Int32) -> Int32 {
  self & 0xFFFF
}

///|
pub impl ToInt16 for Int64 with fn to_int16(self : Int64) -> Int32 {
  (self & 0xFFFF).to_int()
}

///|
pub(open) trait FromInt {
  fn from_int(Int32) -> Self
}

///|
pub(open) trait Floating: Number {
  fn is_nan(Self) -> Bool
}

///|
pub(open) trait Integer: Number {
  fn is_integer(Self) -> Bool
}

///|
pub impl Integer for Int32 with fn is_integer(_x : Int32) -> Bool {
  true
}

///|
pub impl Integer for Int64 with fn is_integer(_x : Int64) -> Bool {
  true
}

///|
pub(open) trait Number: Compare + Add + Sub + Mul + Div {
  fn abs(Self) -> Self
  fn zero() -> Self
  fn one() -> Self
}

///|
pub impl Number for Int32 with fn zero() -> Int32 {
  0
}

///|
pub impl Number for Int64 with fn zero() -> Int64 {
  0
}

///|
pub impl Number for Float with fn zero() -> Float {
  0
}

///|
pub impl Number for Double with fn zero() -> Double {
  0
}

///|
pub impl Number for Int32 with fn one() -> Int32 {
  1
}

///|
pub impl Number for Int64 with fn one() -> Int64 {
  1
}

///|
pub impl Number for Float with fn one() -> Float {
  1
}

///|
pub impl Number for Double with fn one() -> Double {
  1
}

///|
pub impl Number for Int32 with fn abs(self : Int32) -> Int32 {
  Int32::abs(self)
}

///|
pub impl Number for Int64 with fn abs(self : Int64) -> Int64 {
  Int64::abs(self)
}

///|
pub impl Number for Float with fn abs(self : Float) -> Float {
  Float::abs(self)
}

///|
pub impl Number for Double with fn abs(self : Double) -> Double {
  Double::abs(self)
}
