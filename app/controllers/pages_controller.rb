class PagesController < ApplicationController
  before_action :set_page, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, :except => [:show]

  # GET /pages/1
  # GET /pages/1.json
  def show
    @tweets = Tweet.last(4)
    @instagrams = Gram.last(4)
    @socials = []
    (0..3).each do |i|
      @socials << @tweets[i]
      @socials << @instagrams[i]
    end
    @tweet = Tweet.new
  end

  def general_inquiry
    begin
      GeneralInquiryMailer.new_general_inquiry(params[:name], params[:email], params[:number], params[:comment]).deliver!
    rescue Errno::ECONNREFUSED
      logger.info "!!! Warning: Failed to deliver email, skipping"
    end
    render :none 
  end

  def bailey_inc_inquiry
    begin
      GeneralInquiryMailer.bailey_inc_inquiry(params[:name], params[:email], params[:number], params[:company], params[:location], params[:date], params[:info]).deliver!
    rescue Errno::ECONNREFUSED
      logger.info "!!! Warning: Failed to deliver email, skipping"
    end
    render :none
  end


  # GET /pages/1/edit
  def edit
    respond_to do |format|
      format.html {render :layout => 'admin'}
    end
  end

  # POST /pages
  # POST /pages.json
  def create
    @page = Page.new(page_params)

    respond_to do |format|
      if @page.save
        format.html { redirect_to @page, notice: 'Page was successfully created.' }
        format.json { render :show, status: :created, location: @page }
      else
        format.html { render :new }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pages/1
  # PATCH/PUT /pages/1.json
  def update
    respond_to do |format|
      if @page.update(page_params)
        format.html { redirect_to @page, notice: 'Page was successfully updated.' }
        format.json { render :show, status: :ok, location: @page }
      else
        format.html { render :edit }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pages/1
  # DELETE /pages/1.json
  def destroy
    @page.destroy
    respond_to do |format|
      format.html { redirect_to pages_url, notice: 'Page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page
      @page = Page.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def page_params
      params.require(:page).permit(:tag_line, :secondary_tag_line, :secondary_description, :header_image, :secondary_image, :foundation_image, :secondary_foundation_image, athlete_stories_attributes:[:id, :image, :description, :_destroy])
    end
end
