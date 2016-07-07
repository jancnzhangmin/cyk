class CreateCredits < ActiveRecord::Migration
  def change
    create_table :credits do |t|
      t.string :name
      t.integer :sex
      t.integer :age
      t.string :placeoforigin
      t.string :upname
      t.string :tel

      t.timestamps null: false
    end
  end
end
