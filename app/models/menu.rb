class Menu < ActiveRecord::Base
  attr_accessible :name

  validates_presence_of :name

  has_many :items
end