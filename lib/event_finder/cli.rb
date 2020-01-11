# our cli controller 
class EventFinder::CLI 

    def call 
        greeting
        sleep 2
        # location
        # sleep 2
        listing
        sleep 2
        user_input
        sleep 2
        goodbye
    end

    def greeting
        puts "================================================================="
        puts "~~~~~Hello, welcome to the Chico California EventFinder app!~~~~~"
        puts "================================================================="
    end

    # def location
    #     puts "Please enter your city of choice:"
    #     # city = gets.chomp
    # end

    def listing
        puts "Here are the upcoming top events in your area:"
        @events = EventFinder::Scraper.scrape_bands_in_town
        EventFinder::Event.all.each.with_index(1) do |event, index|
            puts "#{index}. #{event.name}"
        end
    end

    def user_input
        puts "Please enter the number of which event you'd like more info on!"
        input = gets.strip.to_i - 1
        EventFinder::Event.user_event_input(input)
    end

    def goodbye 
        puts "Thanks for checking in, we hope to see you soon!"
    end


end