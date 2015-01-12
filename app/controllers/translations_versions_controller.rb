class TranslationsVersionsController < ApplicationController
  before_action :set_translations_version, only: [:show, :edit, :update, :destroy]

  # GET /translations_versions
  # GET /translations_versions.json
  def index
    @translations_versions = TranslationsVersion.all
  end

  # GET /translations_versions/1
  # GET /translations_versions/1.json
  def show
  end

  # GET /translations_versions/new
  def new
    @translations_version = TranslationsVersion.new
  end

  # GET /translations_versions/1/edit
  def edit
  end

  # POST /translations_versions
  # POST /translations_versions.json
  def create
    @translations_version = TranslationsVersion.new(translations_version_params)

    respond_to do |format|
      if @translations_version.save
        format.html { redirect_to @translations_version, notice: 'Translations version was successfully created.' }
        format.json { render action: 'show', status: :created, location: @translations_version }
      else
        format.html { render action: 'new' }
        format.json { render json: @translations_version.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /translations_versions/1
  # PATCH/PUT /translations_versions/1.json
  def update
    respond_to do |format|
      if @translations_version.update(translations_version_params)
        format.html { redirect_to @translations_version, notice: 'Translations version was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @translations_version.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /translations_versions/1
  # DELETE /translations_versions/1.json
  def destroy
    @translations_version.destroy
    respond_to do |format|
      format.html { redirect_to translations_versions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_translations_version
      @translations_version = TranslationsVersion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def translations_version_params
      params.require(:translations_version).permit(:version_id, :translation_id)
    end
end
