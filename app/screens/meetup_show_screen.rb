class MeetupShowScreen < PM::TableScreen

  title 'Meetup'

  attr_accessor :meetup

  def table_data
    meetup.table_data
  end

end