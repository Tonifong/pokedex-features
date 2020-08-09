# Our CLI Controller

class PokedexList::CLI
    
    def call
        list_pokedex
        menu
        goodbye
    end

    def list_pokedex
        puts "POKEDEX LIST "
        puts <<-DOC
        1. Bulbasaur
        2. Ivysaur
        DOC
        @pokemon = PokedexList::Pokemon.choose
    end

    def menu
        puts "Choose Pokemon to see description or type exit:"
        input = nil
         while input != "exit"
          input = gets.strip.downcase
          case input
          when "1"
              puts"features..."
          when "2"
              puts "Features..."
          else
             puts "there is no more pokemon available."
            end
        end
    end

    def goodbye
        puts "Sorry to see you leave, COMEEE BACK SOOOON!!!"
    end
end
