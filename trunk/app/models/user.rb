class User < ActiveRecord::Base
  attr_accessible :alamat, :email, :nama_lengkap, :no_tlp, :password, :password_confirmation, :user_role_id

  has_secure_password
  validates_presence_of :password, :on => :create

  belongs_to :user_role
  has_many :atms
end