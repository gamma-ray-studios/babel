import gdext
import gdext/classes/gdNode

type ParentNim* {.gdsync.} = ptr object of Node2D

method ready(self: ParentNim) {.gdsync.} =
  print "ready: ", self.name
