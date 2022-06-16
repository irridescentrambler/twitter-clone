class AddTweets < ActiveRecord::Migration[7.0]
  def up
    create_table :tweets do |t|
      t.text :description

      t.timestamps
    end
  end

  def down
    drop_table :tweets
  end
end
