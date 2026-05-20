public class Logic {
    public static void main(String[] args) {
        int age = 25;
        boolean hasLicense = true;

        System.out.println("age == 25: " + (age == 25));
        System.out.println("age != 30: " + (age != 30));
        System.out.println("age > 18:  " + (age > 18));
        System.out.println("age <= 21: " + (age <= 21));

        // Logical AND, OR, NOT
        boolean canDrive = age >= 18 && hasLicense;
        boolean isTeen = age >= 13 || age <= 19;
        System.out.println("canDrive: " + canDrive);
        System.out.println("isTeen:   " + isTeen);
        System.out.println("!canDrive: " + (!canDrive));

        // Short-circuit demonstration: the right side is never evaluated
        // because the left side is already false.
        int divisor = 0;
        boolean safe = divisor != 0 && (10 / divisor) > 0;
        System.out.println("safe: " + safe);
    }
}
