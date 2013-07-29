class CreateTwitterUsers < ActiveRecord::Migration
  def change
    create_table :twitter_users do |t|
      t.string :name
      t.string :username
      t.text :description

      t.timestamps
  end
end
  end
