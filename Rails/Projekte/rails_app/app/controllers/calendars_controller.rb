class CalendarsController < ApplicationController
  def show
  	@date = Date.today # params[:date] ? Date.parse(params[:date]) : Date.today
  end
end
