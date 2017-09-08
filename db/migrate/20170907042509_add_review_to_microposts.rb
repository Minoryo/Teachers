class AddReviewToMicroposts < ActiveRecord::Migration[5.1]
  def change
    add_column :microposts, :review, :integer
  end
end
