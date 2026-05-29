# Pattern-action rules as control flow
BEGIN {
    FS = ","
    print "=== Order Report ==="
}

# Skip the header line
NR == 1 { next }

# Range pattern: rules from the first "START" line to the first "STOP" line
/START/,/STOP/ { in_section = 1 }

# Regex pattern: lines containing "urgent"
/urgent/ { urgent_count++ }

# Expression pattern: numeric comparison on a field
$3+0 > 100 { big_orders++; big_total += $3 }

# Compound pattern: both conditions must hold
$2 == "ship" && $3+0 > 50 { ship_value += $3 }

END {
    print "Big orders (>100):", big_orders, "total:", big_total
    print "Shippable value (>50):", ship_value
    print "Urgent mentions:", urgent_count+0
}
