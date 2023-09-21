class PresentationScoresController < ApplicationController
  before_action :set_presentation_score, only: %i[ show edit update destroy ]

  # GET /presentation_scores or /presentation_scores.json
  def index
    @presentation_scores = PresentationScore.all
    @presentations = Presentation.all
  end

  # GET /presentation_scores/1 or /presentation_scores/1.json
  def show
  end

  # GET /presentation_scores/new
  def new
    vars = request.query_parameters
    @presentation_id = vars[:presentation_id] unless vars[:presentation_id].nil?
    @presentation_score = PresentationScore.new
  end

  # GET /presentation_scores/1/edit
  def edit
  end

  # POST /presentation_scores or /presentation_scores.json
  def create
    @presentation_score = PresentationScore.new(presentation_score_params)
    @presentation_score.student = Student.where(email: current_user.email)[0]

    respond_to do |format|
      if @presentation_score.save
        format.html { redirect_to presentation_score_url(@presentation_score), notice: "Presentation score was successfully created." }
        format.json { render :show, status: :created, location: @presentation_score }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @presentation_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /presentation_scores/1 or /presentation_scores/1.json
  def update
    respond_to do |format|
      if @presentation_score.update(presentation_score_params)
        format.html { redirect_to presentation_score_url(@presentation_score), notice: "Presentation score was successfully updated." }
        format.json { render :show, status: :ok, location: @presentation_score }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @presentation_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /presentation_scores/1 or /presentation_scores/1.json
  def destroy
    @presentation_score.destroy

    respond_to do |format|
      format.html { redirect_to presentation_scores_url, notice: "Presentation score was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_presentation_score
      @presentation_score = PresentationScore.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def presentation_score_params
      params.fetch(:presentation_score, {}).permit(:grade, :comment, :q1, :q2, :q3, :q4, :presentation_id)
    end
end
