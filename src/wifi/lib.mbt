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
pub(all) enum WLStatus {
  WL_NO_SHIELD
  WL_STOPPED
  WL_IDLE_STATUS
  WL_NO_SSID_AVAIL
  WL_SCAN_COMPLETED
  WL_CONNECTED
  WL_CONNECT_FAILED
  WL_CONNECTION_LOST
  WL_DISCONNECTED
}

///|
pub fn WLStatus::to_int(self : WLStatus) -> Int {
  match self {
    WL_NO_SHIELD => 255
    WL_STOPPED => 254
    WL_IDLE_STATUS => 0
    WL_NO_SSID_AVAIL => 1
    WL_SCAN_COMPLETED => 2
    WL_CONNECTED => 3
    WL_CONNECT_FAILED => 4
    WL_CONNECTION_LOST => 5
    WL_DISCONNECTED => 6
  }
}

///|
pub fn WLStatus::from_int(val : Int) -> WLStatus {
  match val {
    255 => WL_NO_SHIELD
    254 => WL_STOPPED
    0 => WL_IDLE_STATUS
    1 => WL_NO_SSID_AVAIL
    2 => WL_SCAN_COMPLETED
    3 => WL_CONNECTED
    4 => WL_CONNECT_FAILED
    5 => WL_CONNECTION_LOST
    6 => WL_DISCONNECTED
    _ => abort("")
  }
}
