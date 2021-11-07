class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    # Display a message to the signed in user
    # 1. Find the user -> I have to have her ID
    # DEVISE Helper!
    if user_signed_in?
      @user_mail = current_user.email
    end
    # raise
  end
end
