# our cli controller 
class EventFinder::CLI 

    def call 
        greeting
        sleep 2
        location
        sleep 2
        listing
        sleep 2
        options
        sleep 2
        goodbye
    end

    def greeting
        puts "~~~~~Hello, welcome to the Chico California EventFinder app!~~~~~"
    end

    def location
        puts "Please enter your city of choice:"
        city = gets.chomp
    end

    def listing
        puts "Here are the upcoming top events in your area:"
        @events = EventFinder::Scraper.scrape_bands_in_town
        @events.each.with_index(1) do |event, i|
            # puts "#{i}. #{event.name} - #{event.pri} - #{event.availability}"
        end
    end

    def options
        input = nil
        while input != "exit"
            puts "Please enter the number of which event you'd like more info on! Type list if you'd like both displayed together or type exit to quit:"
            input = gets.strip.downcase

            if input.to_i > 0
                the_event = @events[input.to_i - 1]
                puts "#{the_event.name} - #{the_event.price} - #{the_event.availability}"
            elsif input == "list"
                listing
            else
                puts "Not sure i recognize your command, type list or exit"
         end
      end
    end

    def goodbye 
        puts "Thanks for checking in, we hope to see you soon!"
    end


end