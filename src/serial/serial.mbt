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
extern "C" fn serial_begin(baud : Int64) = "serial_begin"

///|
extern "C" fn serial_end() = "serial_end"

///|
extern "C" fn serial_is_ok() -> Bool = "serial_is_ok"

///|
pub fn Serial::begin(baud : Int64) -> Unit {
  serial_begin(baud)
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
