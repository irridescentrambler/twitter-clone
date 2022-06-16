class AddUserIdToTweets < ActiveRecord::Migration[7.0]
  def up
    add_column :tweets, :user_id, :integer
  end

  def down
    remove_column :tweets, :user_id
  end
end
