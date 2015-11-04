class CreateUserInfos < ActiveRecord::Migration
  def change
    create_table :user_infos do |t|
      t.string :firstname
      t.string :lastname
      t.text :profile

      t.timestamps null: false
    end
  end
end
