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
pub(all) enum Pin {
  GPIO_0
  GPIO_1
  GPIO_2
  GPIO_3
  GPIO_4
  GPIO_5
  GPIO_6
  GPIO_7
  GPIO_8
  GPIO_9
  GPIO_10
  GPIO_11
  GPIO_12
  GPIO_13
  GPIO_14
  GPIO_15
  GPIO_16
  GPIO_17
  GPIO_18
  GPIO_19
  GPIO_20
  GPIO_21
  GPIO_22
  GPIO_23
}

///|
pub fn Pin::to_int8(x : Pin) -> Int {
  match x {
    GPIO_0 => 0
    GPIO_1 => 1
    GPIO_2 => 2
    GPIO_3 => 3
    GPIO_4 => 4
    GPIO_5 => 5
    GPIO_6 => 6
    GPIO_7 => 7
    GPIO_8 => 8
    GPIO_9 => 9
    GPIO_10 => 10
    GPIO_11 => 11
    GPIO_12 => 12
    GPIO_13 => 13
    GPIO_14 => 14
    GPIO_15 => 15
    GPIO_16 => 16
    GPIO_17 => 17
    GPIO_18 => 18
    GPIO_19 => 19
    GPIO_20 => 20
    GPIO_21 => 21
    GPIO_22 => 22
    GPIO_23 => 23
  }
}

///|
pub fn Pin::from_int(x : Int) -> Pin {
  match x {
    0 => GPIO_0
    1 => GPIO_1
    2 => GPIO_2
    3 => GPIO_3
    4 => GPIO_4
    5 => GPIO_5
    6 => GPIO_6
    7 => GPIO_7
    8 => GPIO_8
    9 => GPIO_9
    10 => GPIO_10
    11 => GPIO_11
    12 => GPIO_12
    13 => GPIO_13
    14 => GPIO_14
    15 => GPIO_15
    16 => GPIO_16
    17 => GPIO_17
    18 => GPIO_18
    19 => GPIO_19
    20 => GPIO_20
    21 => GPIO_21
    22 => GPIO_22
    23 => GPIO_23
    _ => abort("")
  }
}
