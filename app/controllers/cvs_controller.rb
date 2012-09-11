class CvsController < ApplicationController
  # GET /cvs
  # GET /cvs.json
  def index
    @cvs = Cv.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cvs }
    end
  end

  # GET /cvs/1
  # GET /cvs/1.json
  def show
    @cv = Cv.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cv }
    end
  end

  # GET /cvs/new
  # GET /cvs/new.json
  def new
    @cv = Cv.new
  end

  # GET /cvs/1/edit
  def edit
    @cv = Cv.find(params[:id])
  end

  def create
    @cv = Cv.new(params[:cv])
    @cv.user_id = params[:id]

      if @cv.save
      redirect_to @user
      flash[:notice] = "Your CV was successufully saved!"
      else
        flash[:notice] = "Something is wrong!"
        render action: 'new'
      end
  end

  # PUT /cvs/1
  # PUT /cvs/1.json
  def update
    @cv = Cv.find(params[:id])

    respond_to do |format|
      if @cv.update_attributes(params[:cv])
        format.html { redirect_to @cv, notice: 'Cv was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cvs/1
  # DELETE /cvs/1.json
  def destroy
    @cv = Cv.find(params[:id])
    @cv.destroy

    respond_to do |format|
      format.html { redirect_to cvs_url }
      format.json { head :no_content }
    end
  end
end
