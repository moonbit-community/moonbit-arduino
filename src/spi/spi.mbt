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
extern "C" fn __spi_begin(
  sck~ : Int,
  miso~ : Int,
  mosi~ : Int,
  ss~ : Int
) -> Unit = "spi_begin"

///|
pub fn begin(
  sck? : @arduino.Pin,
  miso? : @arduino.Pin,
  mosi? : @arduino.Pin,
  ss? : @arduino.Pin
) -> Unit {
  __spi_begin(
    sck=sck.map_or(-1, @arduino.Pin::to_int8),
    miso=miso.map_or(-1, @arduino.Pin::to_int8),
    mosi=mosi.map_or(-1, @arduino.Pin::to_int8),
    ss=ss.map_or(-1, @arduino.Pin::to_int8),
  )
}

///|
extern "C" fn __spi_begin_transaction(
  clock~ : Int,
  bitOrder~ : Int,
  dataMode~ : Int
) -> Unit = "spi_begin_transaction"

///|
pub(all) struct Settings {
  clock : Int
  bitOrder : Int
  dataMode : Int
}

///|
pub fn begin_transaction(settings : Settings) -> Unit {
  __spi_begin_transaction(
    clock=settings.clock,
    bitOrder=settings.bitOrder,
    dataMode=settings.dataMode,
  )
}

///|
extern "C" fn __spi_end_transaction() -> Unit = "spi_end_transaction"

///|
pub fn end_transaction() -> Unit {
  __spi_end_transaction()
}

///|
extern "C" fn __spi_transfer(data : Int) -> Unit = "spi_transfer"

///|
pub fn transfer[T : @arduino.ToInt8](data : T) -> Unit {
  __spi_transfer(data.to_int8())
}

///|
extern "C" fn __spi_transfer16(data : Int) -> Unit = "spi_transfer16"

///|
pub fn transfer16[T : @arduino.ToInt16](data : T) -> Unit {
  __spi_transfer16(data.to_int16())
}

///|
extern "C" fn __spi_transfer_bytes(data : Bytes, length : Int) -> Unit = "spi_transfer_bytes"

///|
pub fn transfer_bytes(data : Bytes) -> Unit {
  __spi_transfer_bytes(data, data.length())
}
