class AddColumnToHikes < ActiveRecord::Migration[5.2]
    def change
      add_column :hikes, :completed, :boolean, default: 0
    end
  end
  