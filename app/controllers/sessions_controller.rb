class SessionsController < Clearance::SessionsController
	layout false

  def create
  	user_type = case params[:commit].downcase.to_sym
  	when :manager
  		User::TYPES[:manager]
  	when :teacher
  		User::TYPES[:teacher]
  	when :student
  		User::TYPES[:student]
  	end

  	user = User.authenticate(params[:email], params[:password], user_type)

  	if user.blank?
  		flash[:error] = t('helpers.labels.login_fail', :default => 'Bad email or password')
  		redirect_to :action => :new
  	else
  		sign_in(user)
  		redirect_to(url_after_create(user_type))
  	end
  end

  private

  def url_after_create(user_type)
  	case user_type
  	when User::TYPES[:manager]
  		managers_home_path
  	when User::TYPES[:teacher]
  		teachers_home_path
  	when User::TYPES[:student]
  		students_home_path
  	end 
  end
end
