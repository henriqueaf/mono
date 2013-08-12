class User < ActiveRecord::Base
  include Clearance::User

  has_one :manager
  has_one :teacher
  has_one :student

  attr_accessible :name, :email, :user_type

  validates_presence_of :user_type, :name
  validates_uniqueness_of :email, :scope => :user_type

  TYPES = {
		:student => 0,
		:teacher => 1,
		:manager => 2,
	}

	def self.authenticate(email, password, user_type)
		return nil unless user = where(:email => email, :user_type => user_type).first # Necessario o first pois se nao houver usuario, ele nao retorna nil, e sim um Array: []

		return user if user.authenticated?(password)
	end
end
