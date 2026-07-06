import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.NoSuchFileException;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;
import java.util.List;

public class IoOperations {
    public static void main(String[] args) throws IOException {
        // 1. Formatted console output
        String name = "Grace";
        int commits = 42;
        double coverage = 0.8756;
        System.out.printf("%s made %d commits (%.1f%% coverage).%n", name, commits, coverage * 100);

        // 2. Write a list of lines to a file (creates or overwrites it)
        Path log = Path.of("build.log");
        List<String> entries = List.of("compile: OK", "test: OK", "package: OK");
        Files.write(log, entries);
        System.out.println("Wrote " + entries.size() + " lines to " + log.getFileName());

        // 3. Read the whole file back into memory
        List<String> lines = Files.readAllLines(log);
        System.out.println("File contents:");
        for (int i = 0; i < lines.size(); i++) {
            System.out.printf("  line %d -> %s%n", i + 1, lines.get(i));
        }

        // 4. Append one more line without erasing the file
        Files.writeString(log, "deploy: OK" + System.lineSeparator(), StandardOpenOption.APPEND);
        System.out.println("After append, total lines: " + Files.readAllLines(log).size());

        // 5. Handle I/O errors with try-catch instead of crashing
        try {
            Files.readAllLines(Path.of("does-not-exist.txt"));
        } catch (NoSuchFileException e) {
            System.out.println("Handled missing file: " + e.getFile());
        }
    }
}
