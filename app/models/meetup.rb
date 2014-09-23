class Meetup < CDQManagedObject
  def self.table_data
    return [{cells: [{ title: "No meetups"}]}] if none?
    [{
      cells: sort_by(:time, order: :desc).map do |meetup|
        {
          title: meetup.title,
          subtitle: "#{meetup.time}",
          action: :show_meetup,
          arguments: meetup
        }
      end
    }]
  end

  def self.load_async(&block)
    AFMotion::JSON.get('http://ruby-ireland-schedule-api.herokuapp.com/meetups.json') do |result|

      if result.success?
        App.delegate.cdq.reset!
        result.object.each do |meetup_json|
          meetup_json.delete(:url)
          meetup_json['time'] = NSDate.dateWithNaturalLanguageString(
            meetup_json['time']
          )
          Meetup.create(meetup_json)
        end
        App.delegate.cdq.save
      end

      block.call
    end
  end

  def table_data
    [{
      cells: [
        {
          title: title,
          subtitle: "Title"
        },
        {
          title: presenter_name,
          subtitle: "Presenter Name"
        },
        {
          title: venue,
          subtitle: "Venue"
        },
        {
          title: "#{time}",
          subtitle: "time"
        }
      ]
    }]
  end

end