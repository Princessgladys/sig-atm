class User < ActiveRecord::Base
  attr_accessible :alamat, :email, :nama_lengkap, :no_tlp, :password, :password_confirmation, :user_role_id, :username

  has_secure_password
  validates_presence_of :username, :password, :password_confirmation, message: "Field Tidak Boleh Kosong", on: :create

  belongs_to :user_role
  has_many :atms
end