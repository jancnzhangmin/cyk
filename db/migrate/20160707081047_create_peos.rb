class CreatePeos < ActiveRecord::Migration
  def change
    create_table :peos do |t|
      t.integer :memberlevel_id
      t.string :name
      t.float :credit
      t.integer :sex
      t.string :tel
      t.string :bankcard
      t.string :bankaccount
      t.string :contact
      t.integer :contactsex
      t.string :contacttel
      t.string :businesslicense
      t.string :qrcode
      t.integer :upid
      t.integer :status
      t.string :wechat

      t.timestamps null: false
    end
  end
end
