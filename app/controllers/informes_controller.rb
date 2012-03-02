class InformesController < ApplicationController
  # GET /informes
  # GET /informes.json
  def index
    @informes = Informe.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @informes }
    end
  end

  # GET /informes/1
  # GET /informes/1.json
  def show
    @informe = Informe.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @informe }
    end
  end

  # GET /informes/new
  # GET /informes/new.json
  def new
    @informe = Informe.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @informe }
    end
  end

  # GET /informes/1/edit
  def edit
    @informe = Informe.find(params[:id])
  end

  # POST /informes
  # POST /informes.json
  def create
    @informe = Informe.new(params[:informe])

    respond_to do |format|
      if @informe.save
        format.html { redirect_to @informe, notice: 'Informe was successfully created.' }
        format.json { render json: @informe, status: :created, location: @informe }
      else
        format.html { render action: "new" }
        format.json { render json: @informe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /informes/1
  # PUT /informes/1.json
  def update
    @informe = Informe.find(params[:id])

    respond_to do |format|
      if @informe.update_attributes(params[:informe])
        format.html { redirect_to @informe, notice: 'Informe was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @informe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /informes/1
  # DELETE /informes/1.json
  def destroy
    @informe = Informe.find(params[:id])
    @informe.destroy

    respond_to do |format|
      format.html { redirect_to informes_url }
      format.json { head :no_content }
    end
  end
end
