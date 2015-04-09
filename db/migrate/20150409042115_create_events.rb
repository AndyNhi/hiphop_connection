class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.string :contact
      t.string :address
      t.string :facebook_url
      t.string :other_url
      t.string :location
      t.datetime :date
      t.timestamps null: false
    end
  end
end
