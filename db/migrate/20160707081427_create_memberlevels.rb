class CreateMemberlevels < ActiveRecord::Migration
  def change
    create_table :memberlevels do |t|
      t.string :name
      t.float :quota

      t.timestamps null: false
    end
  end
end
