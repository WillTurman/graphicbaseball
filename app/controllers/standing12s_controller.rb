class Standing12sController < ApplicationController
  # GET /standing12s
  # GET /standing12s.json
  def index
    @standing12s = Standing12.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @standing12s }
    end
  end

  # GET /standing12s/1
  # GET /standing12s/1.json
  def show
    @standing12 = Standing12.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @standing12 }
    end
  end

  # GET /standing12s/new
  # GET /standing12s/new.json
  def new
    @standing12 = Standing12.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @standing12 }
    end
  end

  # GET /standing12s/1/edit
  def edit
    @standing12 = Standing12.find(params[:id])
  end

  # POST /standing12s
  # POST /standing12s.json
  def create
    @standing12 = Standing12.new(params[:standing12])

    respond_to do |format|
      if @standing12.save
        format.html { redirect_to @standing12, notice: 'Standing12 was successfully created.' }
        format.json { render json: @standing12, status: :created, location: @standing12 }
      else
        format.html { render action: "new" }
        format.json { render json: @standing12.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /standing12s/1
  # PUT /standing12s/1.json
  def update
    @standing12 = Standing12.find(params[:id])

    respond_to do |format|
      if @standing12.update_attributes(params[:standing12])
        format.html { redirect_to @standing12, notice: 'Standing12 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @standing12.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /standing12s/1
  # DELETE /standing12s/1.json
  def destroy
    @standing12 = Standing12.find(params[:id])
    @standing12.destroy

    respond_to do |format|
      format.html { redirect_to standing12s_url }
      format.json { head :no_content }
    end
  end
end
