class EventFinder::Event

    @@all = []

    attr_accessor :name, :date, :url, :location

    def initialize
        save
    end

    def self.all
        @@all
    end

    def save
        self.class.all << self
    end



   

end