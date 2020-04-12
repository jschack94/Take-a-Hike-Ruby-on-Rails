class CreateStates < ActiveRecord::Migration[5.2]
    def change
      create_table :states do |t|
        t.string "state_name"
        t.string "state_code"
      end
    end
  end
  