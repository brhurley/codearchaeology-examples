public class Precedence {
    public static void main(String[] args) {
        // Multiplication happens before addition
        int result = 2 + 3 * 4;
        System.out.println("2 + 3 * 4 = " + result);

        // Parentheses change the order
        int forced = (2 + 3) * 4;
        System.out.println("(2 + 3) * 4 = " + forced);

        // String concatenation pitfall: evaluated left-to-right
        System.out.println("Sum: " + 1 + 2);    // "Sum: 12"
        System.out.println("Sum: " + (1 + 2));  // "Sum: 3"

        // Ternary operator: condition ? whenTrue : whenFalse
        int score = 72;
        String grade = score >= 60 ? "Pass" : "Fail";
        System.out.println("Grade: " + grade);
    }
}
