class AddStatusToCollections < ActiveRecord::Migration
  def change
    add_column :collections, :status, :boolean
  end
end
