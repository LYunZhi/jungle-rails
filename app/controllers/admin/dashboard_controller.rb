class Admin::DashboardController < ApplicationController
  before_action :authenticate

  def show
  end

  protected

  def authenticate
    authenticate_or_request_with_http_basic do |user, password|
      user == ENV["USERNAME"] && password == ENV["PASSWORD"]
    end
  end
end
