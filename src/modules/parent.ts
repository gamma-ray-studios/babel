import { Node2D, prints } from "godot";
import Child, { Idk } from "./child";
import { onready } from "godot.annotations";

export default class Parent extends Node2D {
	@onready("child")
	child!: Child;

	_ready(): void {
		prints("ready:", this.get_name());

		this.child.setup({ wat: "type _this_ 🖕" });
	}
}
