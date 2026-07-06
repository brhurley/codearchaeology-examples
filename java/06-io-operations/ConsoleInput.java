import java.util.Scanner;

public class ConsoleInput {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("What is your name?");
        String name = scanner.nextLine();

        System.out.println("What year were you born?");
        int birthYear = scanner.nextInt();

        int age = 2026 - birthYear;
        System.out.printf("Hi %s, you are about %d this year.%n", name, age);

        scanner.close();
    }
}
