# our cli controller 
class EventFinder::CLI 

    def call 
        greeting
        sleep 2
        location
        sleep 2
        listing
        sleep 2
        get_event_method
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
        @events.each.with_index(1) do |event, index|
            # puts "#{index}. #{events.name}"
        end

        def get_event_method
            puts "Please enter the number of which event you'd like more info on!"
            input = gets.strip
            index = input.to_i - 1
            if index.to_i.between?(0, 17)
                event_info = @events[index]
                #puts #{event_info.date} - #{event_info.location}
            elsif input == "exit"
                
                # list event that corresponds with the number input
                 #events date, location and url for more info

            else
                puts "I don't recognize that command, please enter a valid number."
                get_event_method
            end
        end
    end

    def goodbye 
        puts "Thanks for checking in, we hope to see you soon!"
    end


end