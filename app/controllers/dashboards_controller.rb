class DashboardsController < ApplicationController
  def show
    @shout = Shout.new
    @shouts = current_user.shouts
    render
  end
end
