module EventsHelper

  def events_aging(events)
    @upcoming = []
    @past = []
    events.each do |event|
        if event.date > Time.now
          @upcoming << event
        else
          @past << event
        end
    end
    @upcoming
    @past
  end

end
