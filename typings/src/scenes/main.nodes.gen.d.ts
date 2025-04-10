declare module "godot" {
    interface SceneNodes {
        "src/scenes/main.tscn": {
            gd: Node2D<
                {
                    child: Node2D<{}>,
                }
            >,
            "c#": Node2D<
                {
                    child: Node2D<{}>,
                }
            >,
            swift: ParentSwift<
                {
                    child: ChildSwift<{}>,
                }
            >,
            rust: ParentRust<
                {
                    child: ChildRust<{}>,
                }
            >,
            nim: ParentNim<
                {
                    child: ChildNim<{}>,
                }
            >,
            typescript: Node2D<
                {
                    child: Node2D<{}>,
                }
            >,
        },
    }
}
