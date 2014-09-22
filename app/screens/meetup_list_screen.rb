class MeetupListScreen < PM::TableScreen

  title "Meetups"

  def on_load
    load_async
  end

  def table_data
    if !@meetups
      [{
        cells: [
          { title: "Loading..."}
        ]
      }]
    elsif @meetups.length == 0
      [{
        cells: [
          { title: "No meetups"}
        ]
      }]
    else
      [{
        cells: @meetups.map do |meetup|
          {
            title: meetup['title'],
            subtitle: "#{meetup['time']}"
          }
        end
      }]
    end
  end

  def load_async
    AFMotion::JSON.get('http://ruby-ireland-schedule-api.herokuapp.com/meetups.json') do |result|
      if result.success?
        @meetups = result.object
      else
        @meetups = []
      end

      update_table_data
    end
  end

end