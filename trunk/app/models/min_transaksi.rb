class MinTransaksi < ActiveRecord::Base
  attr_accessible :nominal

  has_many :atms
end
