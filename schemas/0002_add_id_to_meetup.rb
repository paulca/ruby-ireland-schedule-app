schema "0002 add id to meetup" do

  entity 'Meetup' do
    integer32 :id
    string    :title
    string    :presenter_name
    datetime  :time
    string    :venue

    datetime  :created_at
    datetime  :updated_at
  end
end