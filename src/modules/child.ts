import { Node2D } from "godot";

export default class Child extends Node2D {
	// Called when the node enters the scene tree for the first time.
	_ready(): void {
		console.log("ready:", this.get_name());
	}
}
