module Players
    class Human < Player
        def move(board)
            puts "Please choose a number between 1-9 to make your move."
            input = gets.strip
            input    
        end
    end
end