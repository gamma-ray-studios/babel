import gdext/buildconf
import std/strutils
from std/os import `/`

Extension.name = capitalizeAscii "NimMain"
Extension.libdir = "lib"/RunningSystem/Build

--path: src
