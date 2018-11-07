class RemoveBrandFromItems < ActiveRecord::Migration[5.1]
  def change
    remove_reference :items, :brand, foreign_key: true
  end
end
