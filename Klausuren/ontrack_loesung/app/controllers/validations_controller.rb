class ValidationsController < ApplicationController
  before_action :set_validation, only: [:show, :edit, :update, :destroy]
  before_action :set_project

  # GET /validations
  # GET /validations.json
  def index
    @validations = @project.validations
    if @validations.blank?
      redirect_to new_project_validation_path(@project.id)
    end
  end

  # GET /validations/1
  # GET /validations/1.json
  def show
  end

  # GET /validations/new
  def new
    @validation = Validation.new
  end

  # GET /validations/1/edit
  def edit
  end

  # POST /validations
  # POST /validations.json
  def create
    @validation = @project.validations.new(validation_params)

    respond_to do |format|
      if @validation.save
        format.html { redirect_to project_validations_url(@project.id), notice: 'Validation was successfully created.' }
        format.json { render :show, status: :created, location: @validation }
      else
        format.html { render :new }
        format.json { render json: @validation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /validations/1
  # PATCH/PUT /validations/1.json
  def update
    respond_to do |format|
      if @validation.update(validation_params)
        format.html { redirect_to @validation, notice: 'Validation was successfully updated.' }
        format.json { render :show, status: :ok, location: @validation }
      else
        format.html { render :edit }
        format.json { render json: @validation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /validations/1
  # DELETE /validations/1.json
  def destroy
    @validation.destroy
    respond_to do |format|
      format.html { redirect_to project_validations_url(@project.id), notice: 'Validation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_validation
      @validation = Validation.all
      #.find(params[:id])
    end

    def set_project
      @project = Project.find(params[:project_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def validation_params
      params.require(:validation).permit(:project_id, :comment, :username, :ranking)
    end
end
