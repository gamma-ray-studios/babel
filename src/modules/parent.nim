import gdext
import gdext/classes/gdNode

import child

type ParentNim* {.gdsync.} = ptr object of Node2D
  child: ChildNim

method ready(self: ParentNim) {.gdsync.} =
  print "ready: ", self.name

  self.child = self/"child" as ChildNim

  var idk = child.Idk(wat: "jack be nim")
  self.child.setup(idk)
