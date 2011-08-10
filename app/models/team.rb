class Team < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :trackable

  attr_accessible :email, :member_one, :role_one, :member_two, :role_two, :password, :password_confirmation
end
