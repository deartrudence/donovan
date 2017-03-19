class AthleteStoriesController < ApplicationController
  before_action :set_athlete_story, only: [:show, :edit, :update, :destroy]

  # GET /athlete_stories
  # GET /athlete_stories.json
  def index
    @athlete_stories = AthleteStory.all
  end

  # GET /athlete_stories/1
  # GET /athlete_stories/1.json
  def show
  end

  # GET /athlete_stories/new
  def new
    @athlete_story = AthleteStory.new
  end

  # GET /athlete_stories/1/edit
  def edit
  end

  # POST /athlete_stories
  # POST /athlete_stories.json
  def create
    @athlete_story = AthleteStory.new(athlete_story_params)

    respond_to do |format|
      if @athlete_story.save
        format.html { redirect_to @athlete_story, notice: 'Athlete story was successfully created.' }
        format.json { render :show, status: :created, location: @athlete_story }
      else
        format.html { render :new }
        format.json { render json: @athlete_story.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /athlete_stories/1
  # PATCH/PUT /athlete_stories/1.json
  def update
    respond_to do |format|
      if @athlete_story.update(athlete_story_params)
        format.html { redirect_to @athlete_story, notice: 'Athlete story was successfully updated.' }
        format.json { render :show, status: :ok, location: @athlete_story }
      else
        format.html { render :edit }
        format.json { render json: @athlete_story.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /athlete_stories/1
  # DELETE /athlete_stories/1.json
  def destroy
    @athlete_story.destroy
    respond_to do |format|
      format.html { redirect_to athlete_stories_url, notice: 'Athlete story was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_athlete_story
      @athlete_story = AthleteStory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def athlete_story_params
      params.require(:athlete_story).permit(:description, :image, :pages_id)
    end
end
