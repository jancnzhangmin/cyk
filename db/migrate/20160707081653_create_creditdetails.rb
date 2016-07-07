class CreateCreditdetails < ActiveRecord::Migration
  def change
    create_table :creditdetails do |t|
      t.float :amount
      t.datetime :amountdate

      t.timestamps null: false
    end
  end
end
