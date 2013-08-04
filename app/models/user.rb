class User < ActiveRecord::Base
  include Clearance::User

  TYPES = {
		:student => 0,
		:teacher => 1,
		:manager => 2,
	}
	
end
