class CreateStages < ActiveRecord::Migration
  def change
    create_table :stages do |t|
      t.integer :stagelevel_id
      t.datetime :stagedate
      t.float :amount
      t.integer :status

      t.timestamps null: false
    end
  end
end
