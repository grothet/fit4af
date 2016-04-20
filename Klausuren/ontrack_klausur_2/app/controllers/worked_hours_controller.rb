class WorkedHoursController < ApplicationController
	#before_action :set_employee
  	#before_action :set_project

	def create
	@hour = WorkedHour.new(worked_params)   
		if @hour.save
			redirect_to root_path
	
		end
	end

	
	
 #def create
  #  @validation = @project.validations.new(validation_params)

  
  #    if @validation.save
  #      format.html { redirect_to project_validations_url(@project.id), notice: 'Validation was successfully created.' }
  #      format.json { render :show, status: :created, location: @validation }
  #    else
  #      format.html { render :new }
  #     format.json { render json: @validation.errors, status: :unprocessable_entity }
  #    end
  #  end
  #end


 # def update
 #   respond_to do |format|
 #     if @validation.update(validation_params)
  #      format.html { redirect_to @validation, notice: 'Validation was successfully updated.' }
  #      format.json { render :show, status: :ok, location: @validation }
  #    else
  #      format.html { render :edit }
  #      format.json { render json: @validation.errors, status: :unprocessable_entity }
 #     end
  #  end
 # end

  

  private
    # Use callbacks to share common setup or constraints between actions.

   # def set_employee
    #  @employee = @project.employees.find(params[:employee_id])
    #end

    def worked_params
     params.require(:worked_hours).permit(:project_id, :employee_id, :hours)
    end
end
