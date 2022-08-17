require 'pry'

class Board

  def self.transform input
    # remove first row and last ("|------|")
        # substitute spaces for ints
            # pass into check cells method that will iterate over each row, index, and current object
    check_cells(subzero(input[1..-2]))
  end

  private 

  class << self

    def check_cells cells
      # iterate over each row, index and obj
      cells.each.with_index.with_object(cells) do |(row, row_ind), obj|
        # iterate over each col and ind
        row.each.with_index do |col, col_ind|
          # pass in row index, col index, and object
          increase_cells(row_ind, col_ind, obj) unless col
        end
      end
    end

    def closest_cells row, col, obj
      arr = (row-1..row+1).flat_map{ |r| [r].product([*(col-1..col+1)])}
      # do not return any of the following cells
      arr.reject do |r, c|
        r < 0 || c < 0 || [r, c] == [row, col] || !(obj[r] && obj[r])
      end
    end

    def increase_cells row, col, obj
      # pass in row ind, col ind, and obj
        # return closest cells and iterate
      closest_cells(row, col, obj).each do |r, c|
        obj[r][c] += 1
      end
    end    

    def subzero input
      input.map do |row|
        # for each row, substitute spaces for zeros
        row.gsub(/[^*\s]/, '').chars.map{ |el| el == '*' ? nil : 0 }
      end
    end
      
  end

end


=begin
Write your code for the 'Minesweeper' exercise in this file. Make the tests in
`minesweeper_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/minesweeper` directory.
=end