class PossomesController < ApplicationController
  before_action :set_possome, only: [:show, :edit, :update, :destroy]

  # GET /possomes
  # GET /possomes.json
  def index
    @possomes = Possome.all
  end

  # GET /possomes/1
  # GET /possomes/1.json
  def show
  end

  # GET /possomes/new
  def new
    if params[:back]
      @possome = Possome.new(possome_params)
    else
      @possome = Possome.new
    end
  end

  # GET /possomes/1/edit
  def edit
  end

  # POST /possomes
  # POST /possomes.json
  def create
    @possome = Possome.new(possome_params)
    # ここにConfirmさせるための確認画面をrenderする処理が必要（要件）
    respond_to do |format|
      if @possome.save
        format.html { redirect_to @possome, notice: 'Possome was successfully created.' }
        format.json { render :show, status: :created, location: @possome }
      else
        format.html { render :new }
        format.json { render json: @possome.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /possomes/1
  # PATCH/PUT /possomes/1.json
  def update
    respond_to do |format|
      if @possome.update(possome_params)
        format.html { redirect_to @possome, notice: 'Possome was successfully updated.' }
        format.json { render :show, status: :ok, location: @possome }
      else
        format.html { render :edit }
        format.json { render json: @possome.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /possomes/1
  # DELETE /possomes/1.json
  def destroy
    @possome.destroy
    respond_to do |format|
      format.html { redirect_to possomes_url, notice: 'Possome was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # CONFIRM
  def confirm
    @possome = Possome.new(possome_params)
    render :new if @possome.invalid?
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_possome
      @possome = Possome.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def possome_params
      params.require(:possome).permit(:body)
    end
end
