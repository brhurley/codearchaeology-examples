import java.util.function.Function;

public class Functions {

    // A method with two parameters that returns a value
    static int add(int a, int b) {
        return a + b;
    }

    // A void method performs an action but returns no value
    static void greet(String name) {
        System.out.println("Hello, " + name + "!");
    }

    // Method overloading: same name, different parameter lists.
    // This is Java's idiomatic alternative to default parameters.
    static int multiply(int a, int b) {
        return a * b;
    }

    static int multiply(int a, int b, int c) {
        return a * b * c;
    }

    // Recursion: a method that calls itself.
    // 'long' is used because factorials grow quickly.
    static long factorial(int n) {
        if (n <= 1) {
            return 1;
        }
        return n * factorial(n - 1);
    }

    // Varargs: accept any number of int arguments as an array
    static int sum(int... numbers) {
        int total = 0;
        for (int number : numbers) {
            total += number;
        }
        return total;
    }

    // Higher-order method: takes a function as a parameter
    // and applies it twice to the given value.
    static int applyTwice(Function<Integer, Integer> operation, int value) {
        return operation.apply(operation.apply(value));
    }

    public static void main(String[] args) {
        // Use a method's return value
        int result = add(7, 5);
        System.out.println("add(7, 5) = " + result);

        // Call a void method for its side effect
        greet("Ada");

        // The compiler picks the overload by argument count
        System.out.println("multiply(3, 4) = " + multiply(3, 4));
        System.out.println("multiply(3, 4, 5) = " + multiply(3, 4, 5));

        // Recursion
        System.out.println("factorial(5) = " + factorial(5));

        // Varargs lets you pass as many arguments as you like
        System.out.println("sum(1, 2, 3, 4) = " + sum(1, 2, 3, 4));

        // Pass behavior as data using a lambda expression
        int twice = applyTwice(x -> x + 10, 5);
        System.out.println("applyTwice(x -> x + 10, 5) = " + twice);
    }
}
