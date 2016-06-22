# coding: utf-8

# Show Chip on the screen and allow the user
# to move him around with the arrow keys. Wrap
# Chip to the other side of the screen if he
# goes off one side.

require_relative 'stuff'
include Stuff

y = lines / 2
x = cols / 2

loop do
  clear
  setpos(y, x)
  addstr('☺')
  setpos(lines - 1, cols - 12)
  addstr("y=#{y}, x=#{x}")
  refresh
  key = get_key
  if key == UP
    y = y - 1
  elsif key == DOWN
    y = y + 1
  elsif key == RIGHT
    x = x + 1
  elsif key == LEFT
    x = x - 1
  elsif key == ESC or key == CTRL_C
    exit
  end
  y = lines - 1 if y < 0
  y = 0 if y >= lines
  x = cols - 1 if x < 0
  x = 0 if x >= cols
end
