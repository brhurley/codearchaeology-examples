public class Loops {
    public static void main(String[] args) {
        // Classic for loop with an index counter
        System.out.print("Squares:");
        for (int i = 1; i <= 5; i++) {
            System.out.print(" " + (i * i));
        }
        System.out.println();

        // Enhanced for loop (for-each) over an array
        String[] languages = {"Java", "Kotlin", "Scala"};
        for (String lang : languages) {
            System.out.println("JVM language: " + lang);
        }

        // while loop: condition checked before each iteration
        int countdown = 3;
        while (countdown > 0) {
            System.out.println("T-minus " + countdown);
            countdown--;
        }
        System.out.println("Liftoff!");

        // do-while loop: body runs at least once
        int attempts = 0;
        do {
            attempts++;
            System.out.println("Attempt " + attempts);
        } while (attempts < 2);
    }
}
