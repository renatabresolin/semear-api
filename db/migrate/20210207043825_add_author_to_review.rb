class AddAuthorToReview < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :author_id, :integer
  end
end
