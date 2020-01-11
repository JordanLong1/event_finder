class EventFinder::Event

    @@all = []
    # @@info = []

    attr_accessor :name, :date, :url, :location

    def initialize
        save
    end

    def self.all
        @@all
    end

    def self.info
        @@info
    end

    def save
        self.class.all << self
    end

    # def self.more_information

    #     all.each do |e|
    #        @@info <<  "#{e.date} - #{e.location} for ticket prices and more information please visit #{e.url}."

    #     end
    # end



   

end