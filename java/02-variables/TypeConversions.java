public class TypeConversions {
    public static void main(String[] args) {
        // Widening conversion (implicit) - no data loss
        int myInt = 100;
        long myLong = myInt;         // int -> long (automatic)
        double myDouble = myLong;    // long -> double (automatic)

        System.out.println("=== Widening (Implicit) ===");
        System.out.println("int: " + myInt);
        System.out.println("int -> long: " + myLong);
        System.out.println("long -> double: " + myDouble);

        // Narrowing conversion (explicit cast required)
        double pi = 3.14159;
        int truncated = (int) pi;    // Truncates decimal part
        byte small = (byte) 300;     // Overflows: 300 % 256 = 44

        System.out.println("\n=== Narrowing (Explicit Cast) ===");
        System.out.println("double pi: " + pi);
        System.out.println("(int) pi: " + truncated);
        System.out.println("(byte) 300: " + small);

        // String conversions
        String numberStr = "42";
        int parsed = Integer.parseInt(numberStr);
        double parsedDouble = Double.parseDouble("3.14");
        String backToString = String.valueOf(parsed);

        System.out.println("\n=== String Conversions ===");
        System.out.println("String -> int: " + parsed);
        System.out.println("String -> double: " + parsedDouble);
        System.out.println("int -> String: " + backToString);

        // Autoboxing: primitive <-> wrapper object
        int primitiveInt = 5;
        Integer wrappedInt = primitiveInt;    // Autoboxing
        int unwrapped = wrappedInt;           // Unboxing

        System.out.println("\n=== Autoboxing ===");
        System.out.println("primitive: " + primitiveInt);
        System.out.println("wrapped: " + wrappedInt);
        System.out.println("unwrapped: " + unwrapped);
    }
}
