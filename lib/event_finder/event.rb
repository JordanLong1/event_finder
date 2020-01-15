class EventFinder::Event

    @@all = []
  

    attr_accessor :name, :date, :location, :url, :event_input

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

    def self.info
        @@info
    end

    def get_more_info
            puts self.date
            puts self.location
            puts "For more information on tickets, pricing and availability please visit: " + self.url
    end

    def self.user_event_input(input)
        @event_input = input
        event_object = self.all[@event_input]
        event_object.get_more_info
    end



   

end