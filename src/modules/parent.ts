import { Node2D } from "godot";

export default class Parent extends Node2D {
	test: string = "testing";

	// Called when the node enters the scene tree for the first time.
	_ready(): void {
		console.log("ready:", this.test);
	}
}
