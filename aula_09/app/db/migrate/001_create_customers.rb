class CreateCustomers < ActiveRecord::Migration
  def self.up
    create_table :customers do |t|
      t.string :name
      t.string :phone
      t.integer :age
    end
  end

  def self.down
    drop_table :users
  end
end


