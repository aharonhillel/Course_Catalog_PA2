class CoursesSubjectsController < ApplicationController
  before_action :set_courses_subject, only: [:show, :edit, :update, :destroy]

  # GET /courses_subjects
  # GET /courses_subjects.json
  def index
    @courses_subjects = CoursesSubject.all
  end

  # GET /courses_subjects/1
  # GET /courses_subjects/1.json
  def show
  end

  # GET /courses_subjects/new
  def new
    @courses_subject = CoursesSubject.new
  end

  # GET /courses_subjects/1/edit
  def edit
  end

  # POST /courses_subjects
  # POST /courses_subjects.json
  def create
    @courses_subject = CoursesSubject.new(courses_subject_params)

    respond_to do |format|
      if @courses_subject.save
        format.html { redirect_to @courses_subject, notice: 'Courses subject was successfully created.' }
        format.json { render :show, status: :created, location: @courses_subject }
      else
        format.html { render :new }
        format.json { render json: @courses_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /courses_subjects/1
  # PATCH/PUT /courses_subjects/1.json
  def update
    respond_to do |format|
      if @courses_subject.update(courses_subject_params)
        format.html { redirect_to @courses_subject, notice: 'Courses subject was successfully updated.' }
        format.json { render :show, status: :ok, location: @courses_subject }
      else
        format.html { render :edit }
        format.json { render json: @courses_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courses_subjects/1
  # DELETE /courses_subjects/1.json
  def destroy
    @courses_subject.destroy
    respond_to do |format|
      format.html { redirect_to courses_subjects_url, notice: 'Courses subject was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_courses_subject
      @courses_subject = CoursesSubject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def courses_subject_params
      params.require(:courses_subject).permit(:course_id, :subject_id)
    end
end
