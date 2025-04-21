module services

import gd

pub struct ParentV {
	gd.Node2D
}

fn (mut p ParentV) init() {
	println('V: init')
}

fn (mut p ParentV) virt_ready() {
	println('V: ready')
}

fn (mut p ParentV) virt_enter_tree() {
	println('V: enter_tree')
}
