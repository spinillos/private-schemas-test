package test

import (
	"list"
	"strings"
	"time"
)

v0alpha1: {
	schema: {
		spec: {
			val1: string | *"a"
			val2: int64 | *12
			val3: bool | true
			val4: float32 | *3
			val5: [...string] | *["a"]
			val6: [...string] | *[]
			val5a: [...float32] | *[3, 4, 5]
			val5b: [...int64] | *[3, 4, 5]
			val5c: [...Enum] | *["Y", "Z"]
			val7: {[string]: string} | *{
				a: "x"
				b: "y"
			}
			val8: [string]: string | *{}
			val9:  Enum
			val10: Enum & "X"
			val11: Enum & (*"X" | _)
			val12: Constant
			val13: "w" | "y" | "z"
			val14: 1 | "a" | *true
			val15: "hello"
			val16: Enum1
			val17: Enum1 & 1
			val18: Enum1 & (*1 | _)
			val19: int64 & >=0 & <24 | *4
			val20: int64 & >=0 & <24 | *4
			val21: string & strings.MinRunes(1) & strings.MaxRunes(1024)
			val22: string & =~"^[a-zA-Z0-9_-]+$"
			val23: string & time.Time
			val24: time.Duration & =~"^((([0-9]+)y)?(([0-9]+)w)?(([0-9]+)d)?(([0-9]+)h)?(([0-9]+)m)?(([0-9]+)s)?(([0-9]+)ms)?|0)$"
			val25?: [...string] & list.UniqueItems() & list.MaxItems(64)
			val26: [...Enum]
			val27: [...Enum1]
		}
	}
}

Enum:     "X" | "Y" | "Z"
Enum1:    1 | 2 | 3 @cog(kind="enum", memberNames="M|N|O")
Constant: "Hello"
