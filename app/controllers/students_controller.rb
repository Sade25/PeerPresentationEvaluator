class StudentsController < ApplicationController
  before_action :set_student, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  # GET /students or /students.json
  def index
    @students = Student.all
  end

  def student_not_initialized

  end

  # GET /students/1 or /students/1.json
  def show

  end

  # GET /students/new
  def new
    @student = Student.new
  end

  # GET /students/1/edit
  def edit
  end

  # POST /students or /students.json
  def create
    # @student = Student.new
    # @student.fname = student_params[:fname]
    # @student.lname = student_params[:lname]
    # @student.email = student_params[:email]
    @student = Student.new
    @student.fname = student_params[:fname]
    @student.lname = student_params[:lname]
    puts student_params
    puts student_params[:email]
    @student.email = student_params[:email].downcase
    puts student_params[:email].downcase
    respond_to do |format|
      if @student.save
        format.html { redirect_to student_url(@student), notice: "Student was successfully created." }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /students/1 or /students/1.json
  def update
    respond_to do |format|
      @student.fname = student_params[:fname]
      @student.lname = student_params[:lname]
      @student.email = student_params[:email].downcase
      if @student.save
        format.html { redirect_to student_url(@student), notice: "Student was successfully updated." }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1 or /students/1.json
  def destroy
    @student.student_presentations.destroy_all
    @student.destroy

    respond_to do |format|
      format.html { redirect_to students_url, notice: "Student was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def student_params
      params.fetch(:student, {}).permit(:fname, :lname, :email)
    end
end
