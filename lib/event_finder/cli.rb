# our cli controller 
class EventFinder::CLI 

    def call 
        greeting
        sleep 2
        location
        sleep 2
        listing
        sleep 2
        get_more_info
        sleep 2
        goodbye
    end

    def greeting
        puts "================================================================="
        puts "~~~~~Hello, welcome to the Chico California EventFinder app!~~~~~"
        puts "================================================================="
    end

    def location
        puts "Please enter your city of choice:"
        city = gets.chomp
    end

    def listing
        puts "Here are the upcoming top events in your area:"
        @events = EventFinder::Scraper.scrape_bands_in_town
        EventFinder::Event.all.each.with_index(1) do |event, index|
            puts "#{index}. #{event.name}"
        end
    end

        def get_more_info
            puts "Please enter the number of which event you'd like more info on!"
            input = gets.strip.to_i - 1
            # index = input.to_i - 1
            if input.between?(0, 17)
                event_info =  EventFinder::Event.all
                # event_info[more_information]
            elsif input == "exit"
                # list event that corresponds with the number input
                 #events date, location and url for more info
            else
                puts "I don't recognize that command, please enter a valid number."
                get_event_method
            end
        end
    

    def goodbye 
        puts "Thanks for checking in, we hope to see you soon!"
    end


end