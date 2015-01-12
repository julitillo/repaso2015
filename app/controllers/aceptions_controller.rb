class AceptionsController < ApplicationController
  before_action :set_aception, only: [:show, :edit, :update, :destroy]

  # GET /aceptions
  # GET /aceptions.json
  def index
    @aceptions = Aception.all
  end

  # GET /aceptions/1
  # GET /aceptions/1.json
  def show
  end

  # GET /aceptions/new
  def new
    @aception = Aception.new
  end

  # GET /aceptions/1/edit
  def edit
  end

  # POST /aceptions
  # POST /aceptions.json
  def create
    @aception = Aception.new(aception_params)

    respond_to do |format|
      if @aception.save
        format.html { redirect_to @aception, notice: 'Aception was successfully created.' }
        format.json { render action: 'show', status: :created, location: @aception }
      else
        format.html { render action: 'new' }
        format.json { render json: @aception.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aceptions/1
  # PATCH/PUT /aceptions/1.json
  def update
    respond_to do |format|
      if @aception.update(aception_params)
        format.html { redirect_to @aception, notice: 'Aception was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @aception.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aceptions/1
  # DELETE /aceptions/1.json
  def destroy
    @aception.destroy
    respond_to do |format|
      format.html { redirect_to aceptions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aception
      @aception = Aception.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aception_params
      params.require(:aception).permit(:sequencial, :name, :description, :word_id)
    end
end
