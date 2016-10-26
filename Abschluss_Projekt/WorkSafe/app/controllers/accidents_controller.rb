class AccidentsController < ApplicationController
  before_action :set_accident, only: [:show, :edit, :update, :destroy]

  # GET /accidents
  # GET /accidents.json
  def index
    @accidents = Accident.all
  end

  # GET /accidents/1
  # GET /accidents/1.json
  def show
  end

  # GET /accidents/new
  def new
    @accident = Accident.new
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

    #Suchergebnisse
    @search_results = Accident.where('was LIKE ?  AND wann >= ? AND wann <= ?',keywords, startDate, endDate)
    #@search_results = Report.where('wann >= ?', startDate)
  end
  # GET /accidents/1/edit
  def edit
  end

  # POST /accidents
  # POST /accidents.json
  def create
    @accident = Accident.new(accident_params)

    respond_to do |format|
      if @accident.save
        format.html { redirect_to @accident, notice: 'Unfall erstellt.' }
        format.json { render :show, status: :created, location: @accident }
      else
        format.html { render :new }
        format.json { render json: @accident.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accidents/1
  # PATCH/PUT /accidents/1.json
  def update
    respond_to do |format|
      if @accident.update(accident_params)
        format.html { redirect_to @accident, notice: 'Änderungen gespeichert.' }
        format.json { render :show, status: :ok, location: @accident }
      else
        format.html { render :edit }
        format.json { render json: @accident.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accidents/1
  # DELETE /accidents/1.json
  def destroy
    @accident.destroy
    respond_to do |format|
      format.html { redirect_to accidents_url, notice: 'Unfall erfolgreich gelöscht.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accident
      @accident = Accident.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def accident_params
      params.require(:accident).permit(:wann, :wer, :was, :arzt, :ausfall)
    end
end
