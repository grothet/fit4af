class ReportsController < ApplicationController
  before_action :set_report, only: [:show, :edit, :update, :destroy]
  before_action :require_signin, except: [:index]
  #before_action :require_admin, only: [:destroy, :edit, :update]

  # GET /reports
  # GET /reports.json
  def index
    @reports = Report.all
  end

  # GET /reports/1
  # GET /reports/1.json
  def show
  end

  def search #Suchoptionen
  end

  def search_results #Suchergebnisse
    #Datumseinschränkung
    #Die Zeitangaben werden als String übertragen und müssen in ein Datum gewandelt werden

    startDate = Date.parse(params[:dp2])
    endDate = Date.parse(params[:dp3])

    #Suche in Bezeichnung
    keywords = "%" + params[:search_keywords] + "%"

    #Suche nach Kategorien
    if params[:search_category].empty?
      category = "%"
    else   
      category = params[:search_category]
    end

    #Suche nach Orten
    if params[:search_place].empty?
      place = "%"
    else   
      place = params[:search_place]
    end
    #Suchergebnisse
    @search_results = Report.where('ereignis LIKE ? AND category_id LIKE ? AND place_id LIKE ? AND wann >= ? AND wann <= ?',keywords, category, place, startDate, endDate)
    #@search_results = Report.where('wann >= ?', startDate)
  end

  # GET /reports/new
  def new
    @report = Report.new
  end

  # GET /reports/1/edit
  def edit
  end

  # POST /reports
  # POST /reports.json
  def create
    @report = Report.new(report_params)

    respond_to do |format|
      if @report.save
        format.html { redirect_to @report, notice: 'Ereignis wurde erstellt.' }
        format.json { render :show, status: :created, location: @report }
      else
        format.html { render :new }
        format.json { render json: @report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reports/1
  # PATCH/PUT /reports/1.json
  def update
    respond_to do |format|
      if @report.update(report_params)
        format.html { redirect_to @report, notice: 'Änderungen gespeichert.' }
        format.json { render :show, status: :ok, location: @report }
      else
        format.html { render :edit }
        format.json { render json: @report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reports/1
  # DELETE /reports/1.json
  def destroy
    @report.destroy
    respond_to do |format|
      format.html { redirect_to reports_url, notice: 'Ereignis erfolgreich gelöscht.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_report
      @report = Report.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def report_params
      params.require(:report).permit(:user_id, :report_id, :wann, :place_id, :beschr_ort, :ereignis, :category_id, avatars: [])
    end
end
