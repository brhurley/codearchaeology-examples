// Groovy adds newReader() to any InputStream, returning a BufferedReader
def reader = System.in.newReader()

print "Enter your name: "
def name = reader.readLine()
println "Hello, ${name}!"

print "Enter your age: "
def age = reader.readLine() as Integer   // 'as' coerces the String to an Integer
println "Next year you will be ${age + 1}."
