class Users::IdentificationsController < ApplicationController
  before_action :set_user

  private
  def set_user
    @user = User.find(current_user.id)
  end
end
