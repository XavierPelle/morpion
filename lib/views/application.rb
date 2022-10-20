class Application

    attr_accessor :name1 , :name2


        def run 
        name_selector
        game = Board.new(@name1, @name2)
        game.is_win?
        replay? 

    end

    def name_selector

    puts "Pseudo du premier joueur ! "
    pseudo_j1 = gets.chomp
    p1 = Player.new(pseudo_j1)
        puts " "
    puts "Pseudo du deuxieme joueur !"
    pseudo_j2 = gets.chomp
    p2 = Player.new(pseudo_j2)
        puts " "
    puts "voici nos deux joueurs #{pseudo_j1} et #{pseudo_j2}"
    puts " "

    @name1 = p1.player_name.to_s
    @name2 = p2.player_name.to_s

    end



    def replay?
    
        puts "Voulez vous faire une nouvelle partie ? [Y / N] "
        choose = gets.chomp
        if choose == "Y"
            game = Board.new(@name1, @name2)
            game.is_win?
            replay? 
        else
            puts " a la prochaine"
        end

    end



end