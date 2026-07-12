# Writing and reading files in Raku
my $filename = "notes.txt";

# spurt writes an entire string to a file (creates or overwrites)
spurt $filename, "First line\nSecond line\nThird line\n";
say "Wrote to $filename";

# slurp reads the whole file back into a single string
my $contents = slurp $filename;
say "File contents:";
print $contents;

# Append more data with the :append adverb
spurt $filename, "Fourth line\n", :append;

# Read the file line by line (newlines are stripped)
say "Line by line:";
for $filename.IO.lines -> $line {
    say "  → $line";
}

# .lines in list context makes counting easy
my @all = $filename.IO.lines;
say "Total lines: ", @all.elems;
