BEGIN {
    # Variables initialized here are available to all rules
    total_salary = 0
    employee_count = 0
    max_salary = 0
    min_salary = 999999999
    dept_header = "Department Summary"
}

# This rule fires for every record
{
    salary = $3 + 0      # Force numeric interpretation
    name = $1            # String variable
    dept = $2

    # Accumulate totals
    total_salary += salary
    employee_count++

    # Track min and max
    if (salary > max_salary) {
        max_salary = salary
        top_earner = name
    }
    if (salary < min_salary) {
        min_salary = salary
        low_earner = name
    }
}

END {
    avg = total_salary / employee_count

    print dept_header
    print "================="
    printf "Employees:      %d\n", employee_count
    printf "Total salary:   $%d\n", total_salary
    printf "Average salary: $%.2f\n", avg
    printf "Highest paid:   %s ($%d)\n", top_earner, max_salary
    printf "Lowest paid:    %s ($%d)\n", low_earner, min_salary
}
