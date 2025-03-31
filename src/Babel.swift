import SwiftGodot

let allTypes: [Wrapped.Type] = [
	ParentSwift.self,
]

#initSwiftExtension(cdecl: "swift_entry_point", types: allTypes)
