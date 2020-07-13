class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.text :message
      t.string :image
      t.string :name
      t.references :user
      t.timestamps
    end
  end
end
