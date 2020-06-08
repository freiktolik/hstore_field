class UsersController < ApplicationController
  def index
    @users = collection
  end

  private

  def collection
    User.all
  end
end