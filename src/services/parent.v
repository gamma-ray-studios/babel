module services

import gd

pub struct ParentV {
	gd.Node2D
}

fn (mut p ParentV) init() {
	println('V: init')
}

fn (mut p ParentV) ready_() {
	println('V: ready')
}

fn (mut p ParentV) enter_tree_() {
	println('V: enter_tree')
}
