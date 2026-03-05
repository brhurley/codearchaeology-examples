BEGIN {
    # Arrays need no declaration — elements are created on access
    # Uninitialized array elements are 0 or ""
}

{
    dept = $2
    salary = $3 + 0

    # Count employees per department
    dept_count[dept]++

    # Sum salaries per department
    dept_salary[dept] += salary

    # Track employee names per department (string accumulation)
    if (dept_names[dept] == "")
        dept_names[dept] = $1
    else
        dept_names[dept] = dept_names[dept] ", " $1
}

END {
    print "Department Breakdown"
    print "===================="

    # Iterate over all keys with "for (key in array)"
    for (dept in dept_count) {
        avg = dept_salary[dept] / dept_count[dept]
        printf "\n%s\n", dept
        printf "  Employees: %s\n", dept_names[dept]
        printf "  Count:     %d\n", dept_count[dept]
        printf "  Avg Salary: $%.2f\n", avg
    }

    # Test for array element existence with "key in array"
    if ("Engineering" in dept_count)
        print "\nEngineering department exists"

    # Delete an element
    delete dept_count["Sales"]
    print "After deleting Sales, count keys:", length(dept_count)
}
