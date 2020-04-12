class AddStateToHikes < ActiveRecord::Migration[5.2]
    def change
      add_column :hikes, :state, :string
    end
  end
  