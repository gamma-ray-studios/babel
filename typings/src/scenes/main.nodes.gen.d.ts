declare module "godot" {
    interface SceneNodes {
        "src/scenes/main.tscn": {
            "c#": Node2D<
                {
                    child: Node2D<{}>,
                }
            >,
            swift: ParentSwift<{}>,
            rust: ParentRust<{}>,
        },
    }
}
