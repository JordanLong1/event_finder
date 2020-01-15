# our cli controller 
class EventFinder::CLI 

    def call 
        greeting
        sleep 2
        location
        sleep 2
        listing
        sleep 2
        user_input
        sleep 5
        main_menu
    end

    def greeting
        puts 
        puts "================================================================="
        puts "~~~~~Hello, welcome to the Chico California EventFinder app!~~~~~"
        puts "================================================================="
        puts
        @events = EventFinder::Scraper.scrape_bands_in_town

    end

    def location
        puts "Please enter your city of choice:"
        city = gets.chomp
    end

    def listing
        puts "Here are the upcoming top events in your area:"
        EventFinder::Event.all.each.with_index(1) do |event, index|
            puts "#{index}. #{event.name}"
        end
    end

    def user_input
        puts 
        puts 
        puts "Please enter the number of which event you'd like more info on!"
        puts 
        puts
        input = gets.strip.to_i 
        if input <= 0 || input > EventFinder::Event.all.length || input == String
            puts "Invalid input, please try again"
            user_input
        else 
            new_input = input - 1
            EventFinder::Event.user_event_input(new_input)
        end
    end

    def main_menu
        puts 
        puts 
        puts 
        puts "If you'd like to return to the list of events press (y) if you'd like to exit the program type (n)"
        puts 
        puts 
        puts
        back = gets.strip 
        case back.downcase
        when "y"
            # EventFinder::Event.all.clear
          listing
          sleep 2
          user_input
          main_menu
        when "n"
          goodbye
          end
            
    end

    def goodbye 
        puts 
        puts
        puts "Thanks for checking into Chico's EventFinder, we hope to see you soon!"
        puts 
        puts 
    end


end