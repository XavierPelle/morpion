class Board

    attr_accessor :board_empty , :turn ,:name3 ,:name4

    def initialize(pseudo1, pseudo2)


        @name3 = pseudo1
        @name4 = pseudo2
        @board_empty = []

        9.times do |i|
            @board_empty << Boardcase.new(" ", i + 1)
        end

        @Turn = 0


    end

    def final_result

        if @Turn == 9
            puts "égalité"

        elsif @Turn % 2 == 0
            puts "#{@name4} A gagné"
        else
            puts "#{@name3} A gagné "
        end

    
    end


    def is_win?
            
        while win == false && @Turn < 9
            
            affichage
            play
        end
        affichage
        final_result
    end


    def affichage
        
        puts "Numéros du tour #{@Turn}"
        puts " "
        puts board_empty[0].inside + " | " + board_empty[1].inside + " | " + board_empty[2].inside
        puts "----------"
        puts board_empty[3].inside + " | " + board_empty[4].inside + " | " + board_empty[5].inside
        puts "----------"
        puts board_empty[6].inside + " | " + board_empty[7].inside + " | " + board_empty[8].inside

    end



    def play 

        @Turn = @Turn + 1

        if @Turn % 2 == 0

        choice_1 = gets.chomp

        case 
            
        when choice_1 == "a1" && @board_empty[0].inside == " "
            @board_empty[0].inside = "X"

        when choice_1 == "a2" && @board_empty[1].inside == " "
            @board_empty[1].inside = "X"

        when choice_1 == "a3" && @board_empty[2].inside == " "
            @board_empty[2].inside = "X"

        when choice_1 == "b1" && @board_empty[3].inside == " "
            @board_empty[3].inside = "X"

        when choice_1 == "b2" && @board_empty[4].inside == " "
            @board_empty[4].inside = "X"

        when choice_1 == "b3" && @board_empty[5].inside == " "
            @board_empty[5].inside = "X"

        when choice_1 == "c1" && @board_empty[6].inside == " "
            @board_empty[6].inside = "X"

        when choice_1 == "c2" && @board_empty[7].inside == " "
            @board_empty[7].inside = "X"

        when choice_1 == "c3" && @board_empty[8].inside == " "
            @board_empty[8].inside = "X"

        else 
            @Turn = @Turn - 1
        end

        puts " "

    else

        choice_2 = gets.chomp

        case 
            
        when choice_2 == "a1" && @board_empty[0].inside == " "
            @board_empty[0].inside = "O"

        when choice_2 == "a2" && @board_empty[1].inside == " "
            @board_empty[1].inside = "O"

        when choice_2 == "a3" && @board_empty[2].inside == " "
            @board_empty[2].inside = "O"

        when choice_2 == "b1" && @board_empty[3].inside == " "
            @board_empty[3].inside = "O"

        when choice_2 == "b2" && @board_empty[4].inside == " "
            @board_empty[4].inside = "O"

        when choice_2 == "b3" && @board_empty[5].inside == " "
            @board_empty[5].inside = "O"

        when choice_2 == "c1" && @board_empty[6].inside == " "
            @board_empty[6].inside = "O"

        when choice_2 == "c2" && @board_empty[7].inside == " "
            @board_empty[7].inside = "O"

        when choice_2 == "c3" && @board_empty[8].inside == " "
            @board_empty[8].inside = "O"

        else
            @Turn = @Turn - 1
        end
        puts " "
    end
end


        def win 

            if  (@board_empty[0].inside == "X" && @board_empty[1].inside == "X" && @board_empty[2].inside == "X") || (@board_empty[0].inside == "O" && @board_empty[1].inside == "O" && @board_empty[2].inside == "O") || (@board_empty[3].inside == "X" && @board_empty[4].inside == "X" && @board_empty[5].inside == "X") || (@board_empty[3].inside == "O" && @board_empty[4].inside == "O" && @board_empty[5].inside == "O") || (@board_empty[6].inside == "X" && @board_empty[7].inside == "X" && @board_empty[8].inside == "X") || (@board_empty[6].inside == "O" && @board_empty[7].inside == "O" && @board_empty[8].inside == "O") || (@board_empty[0].inside == "X" && @board_empty[3].inside == "X" && @board_empty[6].inside == "X") || (@board_empty[0].inside == "O" && @board_empty[3].inside == "O" && @board_empty[6].inside == "O") || (@board_empty[1].inside == "X" && @board_empty[4].inside == "X" && @board_empty[7].inside == "X") || (@board_empty[1].inside == "O" && @board_empty[4].inside == "O" && @board_empty[7].inside == "O") || (@board_empty[2].inside == "X" && @board_empty[5].inside == "X" && @board_empty[8].inside == "X") || (@board_empty[2].inside == "O" && @board_empty[5].inside == "O" && @board_empty[8].inside == "O") || (@board_empty[0].inside == "X" && @board_empty[4].inside == "X" && @board_empty[8].inside == "X") || (@board_empty[0].inside == "O" && @board_empty[4].inside == "O" && @board_empty[8].inside == "O") || (@board_empty[2].inside == "X" && @board_empty[4].inside == "X" && @board_empty[6].inside == "X") || (@board_empty[2].inside == "O" && @board_empty[4].inside == "O" && @board_empty[6].inside == "O")
                return true
            else
                return false
            end

        end

        

    end


    class Boardcase

        attr_accessor :inside , :number

        def initialize(inside, number)
            @inside = inside
            @number = number

        end





end
