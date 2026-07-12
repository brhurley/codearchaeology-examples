# Explicit file handles and I/O error handling

# open returns a file handle; :w opens for writing (truncates existing)
my $fh = open "log.txt", :w;
$fh.say("Log entry 1");
$fh.say("Log entry 2");
$fh.close;

# :r opens for reading (this is the default mode)
my $in = open "log.txt", :r;
for $in.lines -> $entry {
    say "Read: $entry";
}
$in.close;

# Gracefully handle errors when a file is missing
{
    slurp "does-not-exist.txt";
    CATCH {
        default {
            say "Could not read the file (it may not exist).";
        }
    }
}

say "Program continues normally.";
