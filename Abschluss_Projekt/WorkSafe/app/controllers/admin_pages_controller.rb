class AdminPagesController < ApplicationController
	before_action :require_admin, only: [:index]
	def start
	end
end
