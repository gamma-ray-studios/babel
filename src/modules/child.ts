import { Node2D, print } from "godot";

export interface Idk {
	wat: string;
}

export default class Child extends Node2D {
	setup(idk: Idk): void {
		print(`\t${this.get_parent().get_name()}/${this.get_name()}: ${idk.wat}`);
	}
}
