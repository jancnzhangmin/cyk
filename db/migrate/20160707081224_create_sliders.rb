class CreateSliders < ActiveRecord::Migration
  def change
    create_table :sliders do |t|
      t.string :link
      t.datetime :showstartdate
      t.datetime :showenddate

      t.timestamps null: false
    end
  end
end
