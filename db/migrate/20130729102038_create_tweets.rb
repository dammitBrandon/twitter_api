class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.text :text
      t.string :favourites_count
      t.string :profile_image_url
      t.string :tweet_created_at
      t.references :user
      t.string :tweet_id

      t.timestamps
  end
end
end
