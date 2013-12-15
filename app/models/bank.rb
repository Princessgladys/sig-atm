class Bank < ActiveRecord::Base
  attr_accessible :nama_bank, :icon_bank

  has_many :atms
end
