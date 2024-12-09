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
pub fn abs[T : Number](x : T) -> T {
  x.abs()
}

///|
pub fn constrain[T : Number](amt : T, low : T, high : T) -> T {
  if amt < low {
    low
  } else if amt > high {
    high
  } else {
    amt
  }
}

///|
pub fn map[T : Number](
  x : T,
  in_min : T,
  in_max : T,
  out_min : T,
  out_max : T
) -> T {
  let run = in_max - in_min
  if run == T::zero() {
    return T::zero() - T::one()
  }
  let rise = out_max - out_min
  let delta = x - in_min
  delta * rise / run + out_min
}

///|
pub fn max[T : Number](a : T, b : T) -> T {
  if a > b {
    a
  } else {
    b
  }
}

///|
pub fn min[T : Number](a : T, b : T) -> T {
  if a < b {
    a
  } else {
    b
  }
}

///|
pub fn sq[T : Number](x : T) -> T {
  x * x
}
