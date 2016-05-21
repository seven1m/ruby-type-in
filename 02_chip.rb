# Display our character "Chip" in the middle of the screen.

require_relative 'stuff'
include Stuff

y = lines / 2
x = cols / 2

clear
setpos(y, x)
addstr('😀')
refresh
gets
