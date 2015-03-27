class SubforumsController < ApplicationController
  before_action :set_subforum, only: [:show, :edit, :update, :destroy]

  # GET /subforums
  # GET /subforums.json
  def index
    @subforums = Subforum.all
  end

  # GET /subforums/1
  # GET /subforums/1.json
  def show
    
  end

  # GET /subforums/new
  def new
    @subforum = Subforum.new
  end

  # GET /subforums/1/edit
  def edit
  end

  # POST /subforums
  # POST /subforums.json
  def create
    @subforum = Subforum.new(subforum_params)

    respond_to do |format|
      if @subforum.save
        format.html { redirect_to @subforum, notice: 'Subforum was successfully created.' }
        format.json { render :show, status: :created, location: @subforum }
      else
        format.html { render :new }
        format.json { render json: @subforum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subforums/1
  # PATCH/PUT /subforums/1.json
  def update
    respond_to do |format|
      if @subforum.update(subforum_params)
        format.html { redirect_to @subforum, notice: 'Subforum was successfully updated.' }
        format.json { render :show, status: :ok, location: @subforum }
      else
        format.html { render :edit }
        format.json { render json: @subforum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subforums/1
  # DELETE /subforums/1.json
  def destroy
    @subforum.destroy
    respond_to do |format|
      format.html { redirect_to subforums_url, notice: 'Subforum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subforum
      @subforum = Subforum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subforum_params
      params.require(:subforum).permit(:title)
    end
end
