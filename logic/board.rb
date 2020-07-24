# frozen_string_literal: true

class Board
  WIDTH = 3
  HEIGHT = WIDTH

  attr_accessor :grid

  def initialize
    @grid = Array.new(HEIGHT) { Array.new(WIDTH, :" ") } # block creates separate arrays
    # the above code is similar to below code
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

  def row_win?(marker)
    @grid.any? do |row|
      row.all? do |cell|
        cell == marker
      end
    end

    # does ANY row have a winner??
    # [ [ ][ ][ ] ]
    # [ [ ][ ][ ] ]
    # [ [ ][ ][ ] ]
  end

  def column_win?

  end

  def diagonal_win?

  end


end

@b = Board.new
# b.print_grid

# TESTING for a row win
def print_and_check
  @b.print_grid
  p @b.row_win?(:O)
  p @b.row_win?(:X)

end

@b.grid[0][0] = :X
print_and_check()

@b.grid[0][1] = :X
print_and_check()

@b.grid[0][2] = :X
print_and_check()

