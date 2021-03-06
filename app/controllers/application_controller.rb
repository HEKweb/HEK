class ApplicationController < ActionController::Base
  USERS = { 'zilly' => 'hekHL!611', 'joerg' => 'happi!', 'thekla' => 'u/h*u25', 'adam' => 'hY=mUr', 'annika' => 'D4+lRp'}

  protect_from_forgery

private
  def authenticate
    authenticate_or_request_with_http_basic {|user, password| @user = user if USERS[user] == password}
  end
end
