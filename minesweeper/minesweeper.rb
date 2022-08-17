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
            # iterate over object, each row and index
            cells.each.with_index.with_object(cells) do |(row, row_ind), obj|
                # row.each.with_index do |cell, cell_ind|
                #     puts cell, cell_ind
                # end
binding.pry
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