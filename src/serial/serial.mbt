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
pub(all) struct Serial {}

///|
enum SerialConfig {
  SERIAL_5N1
  SERIAL_6N1
  SERIAL_7N1
  SERIAL_8N1
  SERIAL_5N2
  SERIAL_6N2
  SERIAL_7N2
  SERIAL_8N2
  SERIAL_5E1
  SERIAL_6E1
  SERIAL_7E1
  SERIAL_8E1
  SERIAL_5E2
  SERIAL_6E2
  SERIAL_7E2
  SERIAL_8E2
  SERIAL_5O1
  SERIAL_6O1
  SERIAL_7O1
  SERIAL_8O1
  SERIAL_5O2
  SERIAL_6O2
  SERIAL_7O2
  SERIAL_8O2
}

///|
pub fn SerialConfig::to_int(self : SerialConfig) -> Int {
  match self {
    SERIAL_5N1 => 0x8000010
    SERIAL_6N1 => 0x8000014
    SERIAL_7N1 => 0x8000018
    SERIAL_8N1 => 0x800001c
    SERIAL_5N2 => 0x8000030
    SERIAL_6N2 => 0x8000034
    SERIAL_7N2 => 0x8000038
    SERIAL_8N2 => 0x800003c
    SERIAL_5E1 => 0x8000012
    SERIAL_6E1 => 0x8000016
    SERIAL_7E1 => 0x800001a
    SERIAL_8E1 => 0x800001e
    SERIAL_5E2 => 0x8000032
    SERIAL_6E2 => 0x8000036
    SERIAL_7E2 => 0x800003a
    SERIAL_8E2 => 0x800003e
    SERIAL_5O1 => 0x8000013
    SERIAL_6O1 => 0x8000017
    SERIAL_7O1 => 0x800001b
    SERIAL_8O1 => 0x800001f
    SERIAL_5O2 => 0x8000033
    SERIAL_6O2 => 0x8000037
    SERIAL_7O2 => 0x800003b
    SERIAL_8O2 => 0x800003f
  }
}

///|
extern "C" fn serial_begin(baud : Int64, config : Int) = "serial_begin"

///|
extern "C" fn serial_end() = "serial_end"

///|
extern "C" fn serial_is_ok() -> Bool = "serial_is_ok"

///|
pub fn Serial::begin(baud : Int64, config~ : SerialConfig = SERIAL_8N1) -> Unit {
  serial_begin(baud, config.to_int())
}

///|
pub fn Serial::end() -> Unit {
  serial_end()
}

///|
pub fn Serial::is_ok() -> Bool {
  serial_is_ok()
}

///|
pub(open) trait SerialPrintable {
  serial_print(Self) -> Unit
  serial_println(Self) -> Unit
}

///|
extern "C" fn serial_print_char(x : Char) = "serial_print_char"

///|
extern "C" fn serial_println_char(x : Char) = "serial_println_char"

///|
extern "C" fn serial_print_int(x : Int) = "serial_print_int"

///|
extern "C" fn serial_println_int(x : Int) = "serial_println_int"

///|
extern "C" fn serial_print_int64(x : Int64) = "serial_print_int64"

///|
extern "C" fn serial_println_int64(x : Int64) = "serial_println_int64"

///|
extern "C" fn serial_print_double(x : Double) = "serial_print_double"

///|
extern "C" fn serial_println_double(x : Double) = "serial_println_double"

///|
pub impl SerialPrintable for Char with serial_print(self : Char) -> Unit {
  serial_print_char(self)
}

///|
pub impl SerialPrintable for Char with serial_println(self : Char) -> Unit {
  serial_println_char(self)
}

///|
pub impl SerialPrintable for Int with serial_print(self : Int) -> Unit {
  serial_print_int(self)
}

///|
pub impl SerialPrintable for Int with serial_println(self : Int) -> Unit {
  serial_println_int(self)
}

///|
pub impl SerialPrintable for Int64 with serial_print(self : Int64) -> Unit {
  serial_print_int64(self)
}

///|
pub impl SerialPrintable for Int64 with serial_println(self : Int64) -> Unit {
  serial_println_int64(self)
}

///|
pub impl SerialPrintable for Double with serial_print(self : Double) -> Unit {
  serial_print_double(self)
}

///|
pub impl SerialPrintable for Double with serial_println(self : Double) -> Unit {
  serial_println_double(self)
}

///|
extern "C" fn __serial_parse_int() -> Int = "serial_parse_int"

///|
pub fn serial_parse_int() -> Int {
  __serial_parse_int()
}

///|
extern "C" fn __serial_peek() -> Int = "serial_peek"

///|
pub fn serial_peek() -> Int {
  __serial_peek()
}

///|
extern "C" fn __serial_read() -> Int = "serial_read"

///|
pub fn serial_read() -> Int {
  __serial_read()
}

///|
extern "C" fn __serial_read_to_buffer(buf : Int, size : Int) -> Int = "serial_read_to_buffer"

///|
extern "C" fn __get_buffer_ptr(buf : @buffer.T) -> Int = "__moonbit_get_buffer_ptr"

///|
pub fn serial_read_to_buffer(buf : @buffer.T, size : Int) -> Int {
  __serial_read_to_buffer(__get_buffer_ptr(buf), size)
}
