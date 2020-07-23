# frozen_string_literal: true

class Board
  WIDTH = 3
  HEIGHT = WIDTH

  attr_accessor :grid

  def initialize
    @grid = Array.new(HEIGHT) { Array.new(WIDTH, :" ") } # block creates separate arrays
    # @grid = [
    #   [:" ", :" ", :" "],
    #   [:" ", :" ", :" "],
    #   [:" ", :" ", :" "]
    # ]
  end

  def print_grid
    @grid.each do |row|
      puts
      row.each do |cell|
        print "[#{cell}]"
      end
    end
    puts
  end
end

b = Board.new
b.print_grid
# b.grid[0][1] = :"X"
# b.print_grid
# b.print_grid
