class ReadbooksController < ApplicationController
  before_action :move_to_index, except: [:show, :index]
  # GET /readbooks
  # GET /readbooks.json
  def index
    @readbooks = Readbook.all.order("id DESC").page(params[:page]).per(5)

  end

  # GET /readbooks/1
  # GET /readbooks/1.json
  def show
  end

  # GET /readbooks/new
  def new
    @readbook = Readbook.new
  end

  # GET /readbooks/1/edit
  def edit
  end

  # POST /readbooks
  # POST /readbooks.json
  def create
    @readbook = Readbook.new(readbook_params)

    respond_to do |format|
      if @readbook.save
        format.html { redirect_to @readbook, notice: 'Readbook was successfully created.' }
        format.json { render :show, status: :created, location: @readbook }
      else
        format.html { render :new }
        format.json { render json: @readbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /readbooks/1
  # PATCH/PUT /readbooks/1.json
  def update
    respond_to do |format|
      if @readbook.update(readbook_params)
        format.html { redirect_to @readbook, notice: 'Readbook was successfully updated.' }
        format.json { render :show, status: :ok, location: @readbook }
      else
        format.html { render :edit }
        format.json { render json: @readbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /readbooks/1
  # DELETE /readbooks/1.json
  def destroy
    @readbook.destroy
    respond_to do |format|
      format.html { redirect_to readbooks_url, notice: 'Readbook was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_readbook
      @readbook = Readbook.find(params[:id])
    end

    def move_to_index
      redirect_to action: :index unless user_signed_in?
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def readbook_params
      params.require(:readbook).permit(:title, :author, :review, :image)
    end
end