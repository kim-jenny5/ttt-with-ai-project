class Board
    attr_accessor :cells

    def initialize
        reset!
    end

    def reset!
        @cells = Array.new(9, " ")
    end

    def display
        puts " #{@cells[0]} | #{@cells[1]} | #{@cells[2]} "
        puts "-----------------"
        puts " #{@cells[3]} | #{@cells[4]} | #{@cells[5]} "
        puts "-----------------"
        puts " #{@cells[6]} | #{@cells[7]} | #{@cells[8]} "
    end

    def position(input)
        integer = input.to_i
        if integer.between?(1, 9)
            @cells[integer-1]
        end
    end

    def full?
        @cells.all? {|cell| cell == "X" || cell == "O"}
    end

    def turn_count
        @cells.count {|cell| cell == "X" || cell == "O"}
    end

    def taken?(input)
        position = input.to_i - 1
        @cells[position] == "X" || @cells[position] == "O" ? true : false
    end

    def valid_move?(input)
        integer = input.to_i
        if integer.between?(1, 9)
            !taken?(integer) ? true : false
        end
    end

    def update(input, player)
        integer = input.to_i
        @cells[integer-1] = player.token
    end
end