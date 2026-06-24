/* Defining and calling functions in REXX */

/* Call a function inline - its return value is used in place */
say greet("World")
say greet("REXX programmer")

/* Functions can take multiple arguments */
area = rectangle_area(4, 5)
say "Area of 4 x 5 rectangle:" area

/* A function call can appear inside a larger expression */
say "Double the area:" rectangle_area(4, 5) * 2

exit

/* greet: takes one argument, returns a greeting string */
greet: procedure
  parse arg name
  return "Hello," name"!"

/* rectangle_area: takes two arguments, returns their product */
rectangle_area: procedure
  parse arg width, height
  return width * height
