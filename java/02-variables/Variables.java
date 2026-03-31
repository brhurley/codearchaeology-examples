public class Variables {
    public static void main(String[] args) {
        // Integer types
        byte smallNumber = 127;              // 8-bit, range: -128 to 127
        short mediumNumber = 32767;          // 16-bit, range: -32768 to 32767
        int wholeNumber = 42;                // 32-bit, most common integer type
        long bigNumber = 9_000_000_000L;     // 64-bit, note the L suffix

        // Floating-point types
        float decimal = 3.14f;               // 32-bit, note the f suffix
        double preciseDecimal = 3.14159265;  // 64-bit, default for decimal literals

        // Character and boolean
        char letter = 'A';                   // 16-bit Unicode character
        boolean isActive = true;             // true or false

        // String (reference type, but used like a primitive)
        String greeting = "Hello, Java!";

        // Print all variables
        System.out.println("=== Primitive Types ===");
        System.out.println("byte: " + smallNumber);
        System.out.println("short: " + mediumNumber);
        System.out.println("int: " + wholeNumber);
        System.out.println("long: " + bigNumber);
        System.out.println("float: " + decimal);
        System.out.println("double: " + preciseDecimal);
        System.out.println("char: " + letter);
        System.out.println("boolean: " + isActive);
        System.out.println("String: " + greeting);

        // Numeric underscores for readability (Java 7+)
        int million = 1_000_000;
        long creditCardNumber = 1234_5678_9012_3456L;
        System.out.println("\n=== Readable Numeric Literals ===");
        System.out.println("million: " + million);
        System.out.println("credit card: " + creditCardNumber);
    }
}
