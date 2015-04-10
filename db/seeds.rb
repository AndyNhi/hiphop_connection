Event.destroy_all

15.times do
  Event.create!(
    title: "the stussy event",
    email: "admin@email.com",
    description: "this is a description of an awesome event happening soon",
    contact: "stussy@email.com",
    address: "18th street, broomfield, CO",
    facebook_url: "www.facebook.com",
    other_url: "www.randomlink.com",
    location: "shopping center",
    date: DateTime.new,
    avatar: File.open(File.join(Rails.root, 'app/assets/images/stussy.jpeg'))
  )
end
