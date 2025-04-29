module mods

import gd
import log

pub struct ParentV {
	gd.Node2D
mut:
	child   ?ChildV
	polygon ?gd.Polygon2D
}

fn (mut self ParentV) ready_() {
	if gd.Engine.get_singleton().is_editor_hint() {
		return
	}

	log.info('ready: ${self.get_name()}')
	println('this works')
	// println('this is a nil pointer error? ${42}')

	if mut child := self.get_node_v('child').cast_to_v[ChildV]('ChildV') {
		self.child = child
		idk := Idk{'vvvvvv'}
		child.setup(idk)
	}

	if mut polygon := self.get_node_v('polygon').cast_to[gd.Polygon2D]() {
		self.polygon = polygon
		gdstr := gd.String.new('foo')
		gd.print(gdstr.to_variant())
		list := polygon.get_method_list()
		println('what about 2 this')
		println('polygon: ${polygon.get_name()}')
		polygon.set_color(gd.Color{1.0, 0.0, 0.5, 1.0})
	}
}
