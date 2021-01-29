class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def authenticate_user!
    super
    if current_user
      Current.user = current_user
    end
  end
end
