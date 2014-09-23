class MeetupListScreen < PM::TableScreen

  title "Meetups"
  refreshable

  def on_load
    load_async unless Meetup.any?
  end

  def on_refresh
    load_async
  end

  def table_data
    if @loading
      [{
        cells: [
          { title: "Loading..."}
        ]
      }]
    else
      Meetup.table_data
    end
  end

  def load_async
    @loading = true
    Meetup.load_async do
      @loading = false
      end_refreshing
      update_table_data
    end
  end

  def show_meetup(meetup)
    open MeetupShowScreen.new(nav_bar: true, meetup: meetup)
  end

end