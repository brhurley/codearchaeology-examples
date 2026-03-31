public class ConstantsAndVar {
    // Class-level constants (convention: UPPER_SNAKE_CASE)
    static final double PI = 3.14159265358979;
    static final int MAX_RETRIES = 3;
    static final String APP_NAME = "CodeArchaeology";

    public static void main(String[] args) {
        // Constants
        System.out.println("=== Constants (final) ===");
        System.out.println("PI: " + PI);
        System.out.println("MAX_RETRIES: " + MAX_RETRIES);
        System.out.println("APP_NAME: " + APP_NAME);

        // Local variable type inference with var (Java 10+)
        var count = 10;              // Inferred as int
        var message = "Hello";       // Inferred as String
        var ratio = 3.14;            // Inferred as double
        var active = true;           // Inferred as boolean

        System.out.println("\n=== Type Inference (var) ===");
        System.out.println("count: " + count + " (type: int)");
        System.out.println("message: " + message + " (type: String)");
        System.out.println("ratio: " + ratio + " (type: double)");
        System.out.println("active: " + active + " (type: boolean)");

        // Null handling
        String name = null;
        System.out.println("\n=== Null Handling ===");
        System.out.println("name is null: " + (name == null));

        // Safe null check before using a reference
        if (name != null) {
            System.out.println("name length: " + name.length());
        } else {
            System.out.println("name is not set, skipping length check");
        }

        // Assigning a value
        name = "Java";
        System.out.println("name after assignment: " + name);
        System.out.println("name length: " + name.length());
    }
}
