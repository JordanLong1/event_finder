class EventFinder::Scraper


def self.scrape_bands_in_town
    doc = Nokogiri::HTML(open("https://www.bandsintown.com/?came_from=257"))
    event_list = doc.css("div.eventList-5e5f25ca")
    event_list.each.with_index(1) do |event, index|
        event_object = EventFinder::Event.new 
        event_object.url = event.search("a").attr("href").text.strip
        event_object.name = event.search("h2 a").text.strip
        event_object.location = event.search("div.event-6891d84c").text.strip 
        event_object.date = event.search("div.event-02e85563").text.strip
    puts "#{index} - #{event_object.name} "
 end
end 

end