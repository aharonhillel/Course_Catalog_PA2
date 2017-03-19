require 'test_helper'

class CoursesSubjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @courses_subject = courses_subjects(:one)
  end

  test "should get index" do
    get courses_subjects_url
    assert_response :success
  end

  test "should get new" do
    get new_courses_subject_url
    assert_response :success
  end

  test "should create courses_subject" do
    assert_difference('CoursesSubject.count') do
      post courses_subjects_url, params: { courses_subject: { course_id: @courses_subject.course_id, subject_id: @courses_subject.subject_id } }
    end

    assert_redirected_to courses_subject_url(CoursesSubject.last)
  end

  test "should show courses_subject" do
    get courses_subject_url(@courses_subject)
    assert_response :success
  end

  test "should get edit" do
    get edit_courses_subject_url(@courses_subject)
    assert_response :success
  end

  test "should update courses_subject" do
    patch courses_subject_url(@courses_subject), params: { courses_subject: { course_id: @courses_subject.course_id, subject_id: @courses_subject.subject_id } }
    assert_redirected_to courses_subject_url(@courses_subject)
  end

  test "should destroy courses_subject" do
    assert_difference('CoursesSubject.count', -1) do
      delete courses_subject_url(@courses_subject)
    end

    assert_redirected_to courses_subjects_url
  end
end
