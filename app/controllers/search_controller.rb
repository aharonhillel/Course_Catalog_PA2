class SearchController < ApplicationController
  require 'json'
  # before_action :set_course, only: [:show, :edit, :update, :destroy]

  # GET /courses
  # GET /courses.json
  def index
    @courses = Course.all
  end

  def search_results
    @courses = Course.all
      if params[:subject][:id] != ""
        @courses = Subject.find(params[:subject][:id]).courses
        if params[:search]
        @courses = @courses.where("name ILIKE ? OR code ILIKE ? OR description ILIKE ?", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%").order("code")
        end
      elsif params[:search] != ""
          @courses = @courses.where("name ILIKE ? OR code ILIKE ? OR description ILIKE ?", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%").order("code")
      else
        @courses = @courses
      end
      respond_to do |format|
          format.js
        end
    end




  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_params
      params.permit(:subject, :id)
    end
end
