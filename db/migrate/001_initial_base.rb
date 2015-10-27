# this is intended to be the base migration, do not change it. instead, crete an initial_app
# and modify and/or add to what the base provided, maybe even with comments as to why
class InitialBase < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :email
      t.text :password_digest
      t.timestamps
    end 
  end
end