class CreateUserInfos < ActiveRecord::Migration[6.1]
  def change
    create_table :user_infos do |t|
      t.string :contactEmail
      t.string :contactName
      t.string :mobile

      t.timestamps
    end
  end
end
