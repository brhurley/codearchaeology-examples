public class FormattedOutput {
    public static void main(String[] args) {
        String lang = "Java";
        int year = 1995;
        double share = 0.153;

        // print does not add a newline; println does
        System.out.print("Language: ");
        System.out.println(lang);

        // printf uses format specifiers; %n is a portable newline
        System.out.printf("%s first appeared in %d.%n", lang, year);

        // %.1f rounds to one decimal; %% prints a literal percent sign
        System.out.printf("Market share: %.1f%%%n", share * 100);

        // String.format builds a string instead of printing it;
        // %-10s left-justifies within a field 10 characters wide
        String padded = String.format("[%-10s]", lang);
        System.out.println(padded);
    }
}
