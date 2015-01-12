class TestsController < ApplicationController
  before_action :set_test, only: [:show, :edit, :update, :destroy]

  # GET /tests
  # GET /tests.json
  def index
    @tests = Test.all
  end

  # GET /tests/1
  # GET /tests/1.json
  def show
  end

   attr_accessor :answerfor

  # GET /tests/new
  def new
    @test = Test.new
  end

  # GET /tests/1/edit
  def edit
  end

  # POST /tests
  # POST /tests.json
  def create
    @test = Test.new(test_params)

    respond_to do |format|
      if @test.save
        format.html { redirect_to @test, notice: 'Test was successfully created.' }
        format.json { render action: 'show', status: :created, location: @test }
      else
        format.html { render action: 'new' }
        format.json { render json: @test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tests/1
  # PATCH/PUT /tests/1.json
  def update
    respond_to do |format|
      if @test.update(test_params)
        format.html { redirect_to @test, notice: 'Test was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tests/1
  # DELETE /tests/1.json
  def destroy
    @test.destroy
    respond_to do |format|
      format.html { redirect_to tests_url }
      format.json { head :no_content }
    end
  end
  

  # GET /tests/1/details
  def details
    set_test
    @details = @test.version.translations
  end



  # GET /tests/1/launch
  def launch
    set_test
    @launch = @test.version.translations
    set_answer_list_internal
  end
  


  # GET /tests/1/ask
  def ask
    set_test
    @ask = @test.version.translations.first
  end

  # POST /tests/1/answer
  #def answer
  #  @ask = @test.version.translations
  #end

  # GET /tests/1/answer
  def answer
    set_initializing
    @answer = get_next_answer
    @answer=@answer
  end


POST /tests/1/answer
  def answer
    @answer = Answer.new(answer_params)

    respond_to do |format|
      if @answer.save
        format.html { redirect_to @answer, notice: 'Answer was successfully created.' }
        format.json { render action: 'show', status: :created, location: @answer }
      else
        format.html { render action: 'new' }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  def set_initializing
    set_test
    set_answer_list
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test
      @test = Test.find(params[:id]) if @test.nil?
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_params
      params.require(:test).permit(:user_id, :name, :version_id, :date_start, :date_end)
    end

    def set_answer_list
      if @answer_list.nil?
        @answer_list = (@test.version.translations.order("RANDOM()"))
        repeticiones = @test.repetitions
        for i in 1..repeticiones-1
          @answer_list.concat(@test.version.translations.order("RANDOM()"))
        end
      end
    end

    def get_next_answer
      #@answer_next = -1 if @answer_list.nil?
      @answer_next ||= -1
      @answer_next += 1
      next_answer = Answer.new
      next_answer.translation = @answer_list[@answer_next]
      return next_answer
    end
    


    # Never trust parameters from the scary internet, only allow the white list through.
    def answer_params
      params.require(:answer).permit(:translation_id, :ans)
    end
end