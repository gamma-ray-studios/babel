import SwiftGodot

let allTypes: [Wrapped.Type] = [
	ParentSwift.self,
	ChildSwift.self,
]

#initSwiftExtension(cdecl: "swift_entry_point", types: allTypes)
