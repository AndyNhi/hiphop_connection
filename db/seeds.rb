Event.destroy_all


15.times do
  Event.create!(
    title: "the title",
    description: "this is a description",
    contact: "something@email.com",
    address: "18th street",
    facebook_url: "www.fb.com",
    other_url: "somerandomurl",
    location: "over there",
    date: DateTime.new,
    avatar: File.open(File.join(Rails.root, 'app/assets/images/stussy.jpeg'))
  )
end
