# our cli controller 
class EventFinder::CLI 

    def call 
        greeting
        sleep 2
        location
        sleep 2
        listing
        sleep 2
        goodbye
    end

    def greeting
        #what we want to call first
        #trying to see if commit will work
        #attempt number 3
        puts "~~~~~Hello, welcome to the EventFinder app!~~~~~"
    end

    def location
        puts "Please enter your city of choice:"
        city = gets.chomp
        puts "Please enter the abbreviation of your state:"
        state = gets.chomp
    end

    def listing
        puts "Here are the upcoming shows in your city:"
    end

    def options
        input = nil
        while input != "exit"
            puts "Enter the number 1 if you'd like more info on the concert, enter 2 if you'd like more information on tickets."
            input = gets.strip.downcase
        case input 
        when "1"
            puts "More info on the concert(start time, etc"
        when "2"
            puts "ticket pricing, availability etc."
         end
      end
    end

    def goodbye 
        puts "Thanks for checking in, we hope to see you soon!"
    end


end