class RemoveStateIdFromHikes < ActiveRecord::Migration[5.2]
    def change
      remove_column :hikes, :state_id, :integer
    end
  end
  