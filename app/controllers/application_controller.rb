class ApplicationController < ActionController::Base
  helper_method :is_admin?
  def hello
    render html: "hello, world!"
  end
  def is_admin?
    current_user.email == "admin.1@osu.edu"
  end
end
