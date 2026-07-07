filename = "missing.txt"

# Reading a nonexistent file throws a SystemError
try
    data = read(filename, String)
    println(data)
catch err
    if isa(err, SystemError)
        println("Error: could not open '$filename'")
    else
        rethrow(err)   # re-raise anything we didn't expect
    end
end

# Check existence before reading to avoid the error entirely
if isfile(filename)
    println("$filename is $(filesize(filename)) bytes")
else
    println("$filename is not present")
end
