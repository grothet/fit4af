class ProjectsController < ApplicationController
before_action :set_project, only: [:edit, :destroy, :update, :show]

	def index
		@projects = Project.all 
	end

	def show
	end

	def edit
	end

	def new
		@project = Project.new
	end

	def update
		if @project.update(project_params)
			redirect_to projects_url, notice:"Update war erfolgreich."
		else
			render :edit
		end
	end

	def destroy
		@project.destroy
		redirect_to projects_url, notice: "Projekt #{@project.title} wurde gelöscht"
	end

	def create
		@project = Project.new(project_params)	
		if @project.save
			redirect_to projects_url, notice: "Erfolgreich gespeichert"
		else 
			render "new"
		end
	end

	private
		def project_params 
			params.require(:project).permit(:title, :description, :start_date)
		end

		def set_project
			@project = Project.find(params[:id])
		end
		
end
