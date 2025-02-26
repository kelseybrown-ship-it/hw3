class Place < ApplicationRecord
  def change 
    create_table :places |t|
    t.string "city"
    t.string "country"
    t.string "post"
    t.timestamps
  end
  def create
    redirect_to "/places"
  end
end
