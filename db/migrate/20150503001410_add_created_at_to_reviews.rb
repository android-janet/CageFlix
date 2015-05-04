class AddCreatedAtToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :created_at, :date
  end
end
