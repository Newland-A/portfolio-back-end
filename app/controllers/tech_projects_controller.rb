class TechProjectController < ApplicationController
  before_action :set_tech_project, only: [:show, :edit, :update, :destroy]

  # GET /tech_projects
  # GET /tech_projects.json
  def index
    @tech_projects = TechProject.all
  end

  # GET /tech_projects/1
  # GET /tech_projects/1.json
  def show
  end

  # GET /tech_projects/new
  def new
    @tech_project = TechProject.new
  end

  # GET /tech_projects/1/edit
  def edit
  end

  # POST /tech_projects
  # POST /tech_projects.json
  def create
    @tech_project = TechProject.new(tech_project_params)

    respond_to do |format|
      if @tech_project.save
        format.html { redirect_to @tech_project, notice: 'Tech project was successfully created.' }
        format.json { render :show, status: :created, location: @tech_project }
      else
        format.html { render :new }
        format.json { render json: @tech_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tech_projects/1
  # PATCH/PUT /tech_projects/1.json
  def update
    respond_to do |format|
      if @tech_project.update(tech_project_params)
        format.html { redirect_to @tech_project, notice: 'Tech project was successfully updated.' }
        format.json { render :show, status: :ok, location: @tech_project }
      else
        format.html { render :edit }
        format.json { render json: @tech_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tech_projects/1
  # DELETE /tech_projects/1.json
  def destroy
    @tech_project.destroy
    respond_to do |format|
      format.html { redirect_to tech_projects_url, notice: 'Tech project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tech_project
      @tech_project = TechProject.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tech_project_params
      params.require(:tech_project).permit(:title, :tech_image, :description)
    end
end
