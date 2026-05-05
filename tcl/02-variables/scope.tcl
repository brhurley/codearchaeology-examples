# Variable scope and pseudo-constants in Tcl

# --- Global variables ---
set greeting "Hello"

proc show_greeting {} {
    # Without 'global', $greeting would be undefined inside the proc
    global greeting
    puts "Inside proc: $greeting"
}
show_greeting

# --- Local variables shadow globals ---
proc local_demo {} {
    set greeting "Local hello"
    puts "Local:  $greeting"
}
local_demo
puts "Global: $greeting"

# --- Pseudo-constants via namespace ---
namespace eval Const {
    variable PI    3.14159265358979
    variable E     2.71828182845904
    variable MAX_USERS 100
}

proc circle_area {radius} {
    variable Const::PI
    return [expr {$Const::PI * $radius * $radius}]
}

puts "Area of r=5: [circle_area 5]"
puts "PI    = $Const::PI"
puts "MAX   = $Const::MAX_USERS"

# --- The 'unset -nocomplain' idiom for safe deletion ---
unset -nocomplain does_not_exist
puts "Safely tried to unset a missing variable."
