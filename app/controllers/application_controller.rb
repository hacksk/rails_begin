class ApplicationController < ActionController::Base
  before_action :check_login

  private

  def check_login
	redirect_to(register_users_path) and return unless session['user_id']
	current_user
  end

  def current_user
	@user = User.find(session['user_id'])
  end
end
