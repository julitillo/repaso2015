class TranslationsVersionsTestsController < ApplicationController
  before_action :set_translations_versions_test, only: [:show, :edit, :update, :destroy]

  # GET /translations_versions_tests
  # GET /translations_versions_tests.json
  def index
    @translations_versions_tests = TranslationsVersionsTest.all
  end

  # GET /translations_versions_tests/1
  # GET /translations_versions_tests/1.json
  def show
  end

  # GET /translations_versions_tests/new
  def new
    @translations_versions_test = TranslationsVersionsTest.new
  end

  # GET /translations_versions_tests/1/edit
  def edit
  end

  # POST /translations_versions_tests
  # POST /translations_versions_tests.json
  def create
    @translations_versions_test = TranslationsVersionsTest.new(translations_versions_test_params)

    respond_to do |format|
      if @translations_versions_test.save
        format.html { redirect_to @translations_versions_test, notice: 'Translations versions test was successfully created.' }
        format.json { render action: 'show', status: :created, location: @translations_versions_test }
      else
        format.html { render action: 'new' }
        format.json { render json: @translations_versions_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /translations_versions_tests/1
  # PATCH/PUT /translations_versions_tests/1.json
  def update
    respond_to do |format|
      if @translations_versions_test.update(translations_versions_test_params)
        format.html { redirect_to @translations_versions_test, notice: 'Translations versions test was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @translations_versions_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /translations_versions_tests/1
  # DELETE /translations_versions_tests/1.json
  def destroy
    @translations_versions_test.destroy
    respond_to do |format|
      format.html { redirect_to translations_versions_tests_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_translations_versions_test
      @translations_versions_test = TranslationsVersionsTest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def translations_versions_test_params
      params.require(:translations_versions_test).permit(:translations_versions_id, :test_id)
    end
end
