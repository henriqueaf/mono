module ApplicationHelper
	def render_navbar_links
		case current_user.try(:user_type)
		when User::TYPES[:student]
			render :partial => 'students_home/students_navbar_links'
		when User::TYPES[:teacher]
			render :partial => 'teachers_home/teachers_navbar_links'
		when User::TYPES[:manager]
			render :partial => 'managers_home/managers_navbar_links'
		else
			render :partial => 'managers_home/managers_navbar_links'
		end
	end
end
