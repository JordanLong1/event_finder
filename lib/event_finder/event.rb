class EventFinder::Event

    @@all = []
  

    attr_accessor :name, :date, :location, :url

    def initialize(name, date, location, url)
        @name = name
        @date = date 
        @url = url
        @location = location
        @@all << self 

    end

    def self.all
        @@all
    end

    def self.user_event_input(input)
        event_object = self.all[input]
        event_object.get_more_info
    end

    def get_more_info
        puts "|Date| - " + self.date
        puts 
        puts "|Location| - " + self.location
        puts
        puts "For more information on tickets, pricing and availability please visit: " + self.url
end



   

end