require 'io/console'
require 'curses'

module Stuff
  include Curses

  UP     = "\e[A"
  DOWN   = "\e[B"
  RIGHT  = "\e[C"
  LEFT   = "\e[D"
  ESC    = "\e"
  CTRL_C = "\u0003"

  def self.included(*)
    curs_set(0)
    cbreak
  end

  def get_key
    STDIN.echo = false
    STDIN.raw!
    input = STDIN.getc.chr
    if input == "\e" then
      input << STDIN.read_nonblock(3) rescue nil
      input << STDIN.read_nonblock(2) rescue nil
    end
  ensure
    STDIN.echo = true
    STDIN.cooked!
    return input
  end
end
