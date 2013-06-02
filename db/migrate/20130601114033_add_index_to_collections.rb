class AddIndexToCollections < ActiveRecord::Migration
  def change
  	add_index :collections, :user_id
  	add_index :collections, :book_id
  	add_index :collections, [:book_id, :user_id], unique: true
  end
end
