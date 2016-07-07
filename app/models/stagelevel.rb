class Stagelevel < ActiveRecord::Base
  has_many :stages
  has_many :peos
end
