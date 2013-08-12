class ManagersHomeController < ApplicationController
	before_filter :authorize_manager

  def index
  end

  private

  def authorize_manager
  	deny_access(t('helpers.labels.authorize_page_error', :user_type => t('helpers.titles.manager'), :default => 'Authenticate as manager to access')) unless 
  		signed_in? and current_user.user_type == User::TYPES[:manager]
  end
end