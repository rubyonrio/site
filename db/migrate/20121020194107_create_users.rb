class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :uid
      t.string :email
      t.string :nickname
      t.string :fullname

      t.timestamps
    end
  end
end
