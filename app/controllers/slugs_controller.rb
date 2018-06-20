class SlugsController < ApplicationController
  before_action :set_slug, only: [:show, :edit, :update, :destroy]

  # GET /slugs
  # GET /slugs.json
  def index
    @slugs = Slug.all
  end

  # GET /slugs/1
  # GET /slugs/1.json
  def show
  end

  # GET /slugs/new
  def new
    @slug = Slug.new
  end

  # GET /slugs/1/edit
  def edit
  end

  # POST /slugs
  # POST /slugs.json
  def create
    @slug = Slug.new(slug_params)

    respond_to do |format|
      if @slug.save
        format.html { redirect_to @slug, notice: 'Slug was successfully created.' }
        format.json { render :show, status: :created, location: @slug }
      else
        format.html { render :new }
        format.json { render json: @slug.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /slugs/1
  # PATCH/PUT /slugs/1.json
  def update
    respond_to do |format|
      if @slug.update(slug_params)
        format.html { redirect_to @slug, notice: 'Slug was successfully updated.' }
        format.json { render :show, status: :ok, location: @slug }
      else
        format.html { render :edit }
        format.json { render json: @slug.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /slugs/1
  # DELETE /slugs/1.json
  def destroy
    @slug.destroy
    respond_to do |format|
      format.html { redirect_to slugs_url, notice: 'Slug was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_slug
      @slug = Slug.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def slug_params
      params.require(:slug).permit(:name, :img)
    end
end
