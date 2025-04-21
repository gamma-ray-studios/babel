#!/usr/bin/env -S v

import os
import time

fn main() {
	compiler := os.args[1] or { 'tcc' }
	out := 'lib/libvlang.so'

	start := time.now()

	run('${@VEXE} -shared -enable-globals -o ${out} -d no_backtrace -cc ${compiler} .')
	run('patchelf --clear-execstack ${out}')

	println('took ${(time.now() - start)}')
}

fn run(cmd string) {
	println('running: ${cmd}')
	execute_or_exit(cmd)
}
