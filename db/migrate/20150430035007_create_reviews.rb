class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :body
      t.belongs_to :movie
      t.date :created_at
    end
  end
end
