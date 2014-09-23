schema "0001 initial" do

  entity 'Meetup' do
    string    :title
    string    :presenter_name
    datetime  :time
    string    :venue

    datetime  :created_at
    datetime  :updated_at
  end
end