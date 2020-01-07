class EventFinder::ApiService 

    def self.get_events
        url = "https://app.ticketmaster.com/discovery/v2/events.json?apikey=GBuaaylaBkMGk1tJZf7M3jLXl7ElMqeH&city=San Francisco&venueID=KovZ917Ah1H&genreID=KnvZfZ7vAde&subgenre=KZazBEonSMnZfZ7vFJA"
        response = RestClient.get(url)
        json_respone = JSON.parse(response)
        #create instances of our events class
       
    end

end
