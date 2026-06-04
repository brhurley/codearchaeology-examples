public class SwitchExample {
    public static void main(String[] args) {
        int day = 3;

        // Switch expression returns a value — no break, no fall-through
        String name = switch (day) {
            case 1 -> "Monday";
            case 2 -> "Tuesday";
            case 3 -> "Wednesday";
            case 4 -> "Thursday";
            case 5 -> "Friday";
            default -> "Weekend";
        };
        System.out.println("Day " + day + " is " + name);

        // Multiple labels can share one branch
        String kind = switch (day) {
            case 6, 7 -> "rest day";
            default -> "work day";
        };
        System.out.println("Day " + day + " is a " + kind);
    }
}
