class ChangeDefaultValorCommentscountForTweet < ActiveRecord::Migration[6.0]
  def change
    change_column :tweets, :comments_count, :integer, default: 0
  end
end
