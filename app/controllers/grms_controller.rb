class GrmsController < ApplicationController
  # GET /grms
  # GET /grms.json
  def index
    @grms = Grm.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @grms }
    end
  end

  # GET /grms/1
  # GET /grms/1.json
  def show
    @grm = Grm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @grm }
    end
  end

  # GET /grms/new
  # GET /grms/new.json
  def new
    @grm = Grm.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @grm }
    end
  end

  # GET /grms/1/edit
  def edit
    @grm = Grm.find(params[:id])
  end

  # POST /grms
  # POST /grms.json
  def create
    @grm = Grm.new(params[:grm])

    respond_to do |format|
      if @grm.save
        format.html { redirect_to @grm, notice: 'Grm was successfully created.' }
        format.json { render json: @grm, status: :created, location: @grm }
      else
        format.html { render action: "new" }
        format.json { render json: @grm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /grms/1
  # PUT /grms/1.json
  def update
    @grm = Grm.find(params[:id])

    respond_to do |format|
      if @grm.update_attributes(params[:grm])
        format.html { redirect_to @grm, notice: 'Grm was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @grm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grms/1
  # DELETE /grms/1.json
  def destroy
    @grm = Grm.find(params[:id])
    @grm.destroy

    respond_to do |format|
      format.html { redirect_to grms_url }
      format.json { head :no_content }
    end
  end
end
