class CreateGodowns < ActiveRecord::Migration
  def change
    create_table :godowns do |t|
      t.string :godown_place

      t.timestamps
    end
  end
end
