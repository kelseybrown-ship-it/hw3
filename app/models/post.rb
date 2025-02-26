class Post < ApplicationRecord
  def change 
    create_table :posts |t|
    t.string "activity"
    t.integer "date"
    t.string "details"
    t.integer "place_id"
    t.timestamps
  end
  def create
    redirect_to :/posts"
  end
end
