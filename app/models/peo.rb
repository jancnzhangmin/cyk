class Peo < ActiveRecord::Base
  belongs_to :stagelevel
  belongs_to :memberlevel
end
