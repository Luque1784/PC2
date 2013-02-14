class FmalbumsController < ApplicationController
  # GET /fmalbums
  # GET /fmalbums.json
  def index
    @fmalbums = Fmalbum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fmalbums }
    end
  end

  # GET /fmalbums/1
  # GET /fmalbums/1.json
  def show
    @fmalbum = Fmalbum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fmalbum }
    end
  end

  # GET /fmalbums/new
  # GET /fmalbums/new.json
  def new
    @fmalbum = Fmalbum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fmalbum }
    end
  end

  # GET /fmalbums/1/edit
  def edit
    @fmalbum = Fmalbum.find(params[:id])
  end

  # POST /fmalbums
  # POST /fmalbums.json
  def create
    @fmalbum = Fmalbum.new(params[:fmalbum])

    respond_to do |format|
      if @fmalbum.save
        format.html { redirect_to @fmalbum, notice: 'Fmalbum was successfully created.' }
        format.json { render json: @fmalbum, status: :created, location: @fmalbum }
      else
        format.html { render action: "new" }
        format.json { render json: @fmalbum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fmalbums/1
  # PUT /fmalbums/1.json
  def update
    @fmalbum = Fmalbum.find(params[:id])

    respond_to do |format|
      if @fmalbum.update_attributes(params[:fmalbum])
        format.html { redirect_to @fmalbum, notice: 'Fmalbum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @fmalbum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fmalbums/1
  # DELETE /fmalbums/1.json
  def destroy
    @fmalbum = Fmalbum.find(params[:id])
    @fmalbum.destroy

    respond_to do |format|
      format.html { redirect_to fmalbums_url }
      format.json { head :no_content }
    end
  end
end
