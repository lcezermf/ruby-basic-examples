load 'db/connection.rb'

class Customer < ActiveRecord::Base
  validates_presence_of :name, :age, :phone
  validates_format_of :phone, :with => /\([0-9]{2}\)\s[0-9]{4}-[0-9]{4}/
  validates_numericality_of :age, :only_integer => true
end
