#let value = ""

#for (k, v) in sys.inputs {
	if k == "path" {
		value = v
	}
}

#value
