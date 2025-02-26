class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
        t.string "activity"
        t.date "date"
        t.text "details"
        t.integer "place_id"
        t.timestamps
    end
  end
end
