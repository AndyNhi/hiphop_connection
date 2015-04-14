require 'rails_helper'


feature 'event' do

  scenario 'events can be created by guest' do

    click_on 'add event'
    expect(page).to have_content 'create event'
    fill_in 'Title', with: 'session party'
    fill_in 'Date', with: 4.days.from_now
    fill_in 'Location', with: 'denver'
    fill_in 'Address', with: '16th street, denver, co'
    fill_in 'Description', with: 'just a cool event for people to dance'
    attach_file('avatar', File.join(Rails.root, '/spec/support/images/example.jpg'))
    fill_in 'Facebook url', with: 'www.facebook.com/'
    fill_in 'Other url', with: 'www.otherurl.com'
    fill_in 'Email', with: 'admin@email.com'


  end

end
