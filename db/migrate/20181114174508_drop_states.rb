class DropStates < ActiveRecord::Migration[5.2]
    def change
      drop_table :states
    end
  end
  