import Foundation

let path = "journal.txt"

// Writing: String.write(toFile:) creates or overwrites the file
let entry = """
Day 1: Started learning Swift I/O.
Day 2: Wrote my first file from Swift.
"""

do {
    try entry.write(toFile: path, atomically: true, encoding: .utf8)
    print("Wrote \(path)")
} catch {
    print("Write failed: \(error)")
}

// Reading: String(contentsOfFile:) loads the whole file
do {
    let contents = try String(contentsOfFile: path, encoding: .utf8)
    print("File contents:")
    print(contents)
} catch {
    print("Read failed: \(error)")
}

// Appending: FileHandle gives lower-level, positional access
do {
    let handle = try FileHandle(forWritingTo: URL(fileURLWithPath: path))
    try handle.seekToEnd()
    try handle.write(contentsOf: Data("\nDay 3: Appended a line with FileHandle.".utf8))
    try handle.close()
    print("Appended a third entry")
} catch {
    print("Append failed: \(error)")
}

// FileManager answers questions about the filesystem
if FileManager.default.fileExists(atPath: path) {
    print("\(path) exists")
}

// Verify the final result
do {
    let final = try String(contentsOfFile: path, encoding: .utf8)
    print("Final contents:")
    print(final)
} catch {
    print("Final read failed: \(error)")
}
