import { Node2D, prints } from "godot";
import ChildTS, { Idk } from "./child";
import { onready } from "godot.annotations";

export default class ParentTS extends Node2D {
	@onready("child")
	child!: ChildTS;

	_ready(): void {
		prints("ready:", this.get_name());

		this.child.setup({ wat: "type _this_ 🖕" });
	}
}
