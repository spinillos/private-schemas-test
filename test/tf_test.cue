package test

v0alpha1: {
	schema: {
		spec: {
			val1: string | *"a"
			val2: int64 | *12
			val3: bool | true
			val4: float32 | *3
			val5: [...string] | *["a"]
			val6: [...string] | *[]
			val7: [string]: string | *{
				a: "x",
				"b": "y"
			}
			val8: [string]: string | *{}
			val9: Enum
			val10: Enum & "X"
			val11: Enum | *"X"
			val12: Constant
			val13: "w" | "y" | "z"
			val14: 1 | "a" | *true
			val15: "hello"
			val16: Enum1
			val17: Enum1 & 1
			val18: Enum1 | *2
		}
	}
}

Enum: "X" | "Y" | "Z"
Enum1: 1 | 2 | 3 @cog(kind="enum", memberNames="M|N|O")
Constant: "Hello"
