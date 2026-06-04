public class Conditionals {
    public static void main(String[] args) {
        int score = 82;

        // if / else if / else chain
        if (score >= 90) {
            System.out.println("Grade: A");
        } else if (score >= 80) {
            System.out.println("Grade: B");
        } else if (score >= 70) {
            System.out.println("Grade: C");
        } else {
            System.out.println("Grade: F");
        }

        // Ternary operator: a compact conditional expression
        int temperature = 15;
        String weather = (temperature > 20) ? "warm" : "cool";
        System.out.println("It is " + weather + " today");

        // Conditions must be boolean — combine them with && and ||
        boolean isWeekend = false;
        boolean isHoliday = true;
        if (isWeekend || isHoliday) {
            System.out.println("No work today!");
        }
    }
}
