class KategoriAtm < ActiveRecord::Base
  attr_accessible :nama_kategori

  has_many :atms
end
