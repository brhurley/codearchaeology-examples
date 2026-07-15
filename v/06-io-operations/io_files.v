import os

fn main() {
	path := 'notes.txt'

	// Write a whole file in one call (creates or overwrites)
	os.write_file(path, 'first line\nsecond line\n') or {
		eprintln('write failed: ${err}')
		return
	}

	// Read the whole file back as a single string
	content := os.read_file(path) or {
		eprintln('read failed: ${err}')
		return
	}
	print(content)

	// Read the file as an array of lines
	lines := os.read_lines(path) or {
		eprintln('read failed: ${err}')
		return
	}
	println('line count: ${lines.len}')

	// Append using an explicit file handle
	mut f := os.open_append(path) or {
		eprintln('open failed: ${err}')
		return
	}
	f.writeln('third line') or { panic(err) }
	f.close()

	// Verify the append by numbering each line
	final_lines := os.read_lines(path) or { return }
	for i, line in final_lines {
		println('${i + 1}: ${line}')
	}

	// Clean up the file we created
	os.rm(path) or {}
}
