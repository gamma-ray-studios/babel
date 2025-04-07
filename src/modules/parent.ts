import { Node2D, prints } from "godot";
import Child, { Idk } from "./child";

export default class Parent extends Node2D {
	child: Child;

	_ready(): void {
		prints("ready:", this.get_name());

		this.child = <Child>this.get_node("child");
		const idk: Idk = {
			wat: "type _this_ 🖕",
		};
		this.child.setup(idk);
	}
}
