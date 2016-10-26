class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  #before_action :set_report, only:[:edit]


  # GET /tasks
  # GET /tasks.json
  def index
    if params[:format].present?
    @tasks = Task.where(user_id: params[:format])
    else
    @tasks = Task.all
    end
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
  end

  # GET /tasks/new
  def new
    @task = Task.new
  end

  # GET /tasks/1/edit
  def edit
  end

  def finish
    if Task.update(params[:format], :abgeschlossen => true, end_date: Date.today)
      redirect_to tasks_url, notice: 'Aufgabe erfolgreich abgeschlossen.'   
    else
      redirect_to tasks_url, notice: 'Aufgabe konnte nicht beendet werden.'
    end

  end

  # POST /tasks
  # POST /tasks.json
  def create
    @task = Task.new(task_params)

    respond_to do |format|
      if @task.save
        format.html { redirect_to @task, notice: 'Aufgabe wurde erstellt.' }
        format.json { render :show, status: :created, location: @task }
      else
        format.html { render :new }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tasks/1
  # PATCH/PUT /tasks/1.json
  def update
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to @task, notice: 'Änderung gespeichert.' }
        format.json { render :show, status: :ok, location: @task }
      else
        format.html { render :edit }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @task.destroy
    respond_to do |format|
      format.html { redirect_to tasks_url, notice: 'Aufgabe erfolgreich gelöscht' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end
    def set_report
      @report = Report.find(params[:report_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_params
      params.require(:task).permit(:user_id, :start_date, :description, :sap_nr, :modi_nr, :report_id, :accident_id)
    end
end
