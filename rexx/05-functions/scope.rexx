/* Variable scope in REXX routines */

counter = 100
config  = "production"

say "Before call, counter =" counter

/* 1. PROCEDURE isolates this routine's variables from the caller */
call try_to_change
say "After call, counter =" counter

/* 2. PROCEDURE EXPOSE shares only the named caller variables */
call show_config

/* 3. No PROCEDURE keyword - the routine shares ALL caller variables */
total = 5
call add_to_total
say "Shared total =" total

exit

try_to_change: procedure
  counter = 999
  say "Inside routine, local counter =" counter
  return

show_config: procedure expose config
  say "Config from caller:" config
  return

add_to_total:
  total = total + 10
  return
