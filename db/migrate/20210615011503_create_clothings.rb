class CreateClothings < ActiveRecord::Migration[6.1]
  def change
    create_table :clothings do |t|

      t.timestamps
    end
  end
end
