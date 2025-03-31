import std/strutils
import gdext
import gdext/classes/gdnode

type ChildNim* {.gdsync.} = ptr object of Node2D

type Idk* = object
  wat*: string

proc setup*(self: ChildNim, idk: Idk) =
  print "\t$#/$#: $#" % [ $self.getParent().getName(), $self.name, idk.wat ]
