class CreateStagelevels < ActiveRecord::Migration
  def change
    create_table :stagelevels do |t|
      t.string :order
      t.float :ammount
      t.float :rate

      t.timestamps null: false
    end
  end
end
