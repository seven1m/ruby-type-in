# coding: utf-8

# Show Chip on the screen and allow the user
# to move him around with the arrow keys.

require_relative 'stuff'
include Stuff

y = lines / 2
x = cols / 2

loop do
  clear
  setpos(y, x)
  addstr('☺')
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
end
