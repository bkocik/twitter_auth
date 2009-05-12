class AuthController < ApplicationController
  def index
    unless @screen_name = session[:screen_name]
      oauth = Twitter::OAuth.new(
        'your_client_token',
        'your_client_secret'
      )
      session['rtoken'] = oauth.request_token.token
      session['rsecret'] = oauth.request_token.secret
      @url = oauth.request_token.authorize_url
    end
  end

  def complete
    oauth = Twitter::OAuth.new(
      'your_client_token',
      'your_client_secret'
    )
    oauth.authorize_from_request(
      session['rtoken'],
      session['rsecret']
    )
    user = Twitter::Base.new(oauth.access_token).verify_credentials
    session[:screen_name] = user.screen_name
    redirect_to auth_path
  end
end