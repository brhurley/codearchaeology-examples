/* SELECT statements in REXX */

/* Match against string values */
day = "WED"
select
    when day = "SAT" | day = "SUN" then
        say "It's the weekend!"
    when day = "FRI" then
        say "Almost the weekend!"
    when day = "MON" then
        say "Start of the work week"
    otherwise
        say "It's a regular work day"
end

/* Use ranges instead of exact matches */
hour = 14
select
    when hour < 12 then
        say "Good morning"
    when hour < 18 then
        say "Good afternoon"
    otherwise
        say "Good evening"
end
