# our cli controller 
class EventFinder::CLI 

    def call 
        greeting
        sleep 2
        location
        sleep 2
        listing
        sleep 2
        # get_event_method
        # sleep 2
        options
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
        @events.each.with_index(1) do |event, i|
            # puts "#{i}. #{event.name}"
        end

        # def get_event_method
        #     puts "Please enter the number of which event you'd like more info on!"
        #     input = gets.strip
        #     index = input.to_i - 1
        #     if index.to_i.between?(0, 17)
        #         binding.pry
        #         @events[index]
        #         # list event that corresponds with the number input
        #     else
        #         puts "I don't recognize that command, please enter a valid number."
        #         get_event_method
        #     end
        # end
    end

    def options
        input = nil
        while input != "exit"
            input = gets.strip.downcase

            if input.to_i > 0
                the_event = @events[input.to_i - 1]
                # puts "#{the_event.name} - #{the_event.location} - #{the_event.url}"
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