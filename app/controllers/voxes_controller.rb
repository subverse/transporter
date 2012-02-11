class VoxesController < ApplicationController
  # GET /voxes
  # GET /voxes.json
  def index
    @voxes = Vox.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @voxes }
    end
  end

  # GET /voxes/1
  # GET /voxes/1.json
  def show
    @vox = Vox.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @vox }
    end
  end

  # GET /voxes/new
  # GET /voxes/new.json
  def new
    @vox = Vox.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @vox }
    end
  end

  # GET /voxes/1/edit
  def edit
    @vox = Vox.find(params[:id])
  end

  # POST /voxes
  # POST /voxes.json
  def create
    @vox = Vox.new(params[:vox])

    respond_to do |format|
      if @vox.save
        format.html { redirect_to @vox, notice: 'Vox was successfully created.' }
        format.json { render json: @vox, status: :created, location: @vox }
      else
        format.html { render action: "new" }
        format.json { render json: @vox.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /voxes/1
  # PUT /voxes/1.json
  def update
    @vox = Vox.find(params[:id])

    respond_to do |format|
      if @vox.update_attributes(params[:vox])
        format.html { redirect_to @vox, notice: 'Vox was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @vox.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /voxes/1
  # DELETE /voxes/1.json
  def destroy
    @vox = Vox.find(params[:id])
    @vox.destroy

    respond_to do |format|
      format.html { redirect_to voxes_url }
      format.json { head :no_content }
    end
  end
end
