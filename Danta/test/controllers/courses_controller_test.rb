require 'test_helper'

class CoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @course = courses(:one)
  end

  test "should get index" do
    get courses_url
    assert_response :success
  end

  test "should get new" do
    get new_course_url
    assert_response :success
  end

  test "should create course" do
    assert_difference('Course.count') do
      post courses_url, params: { course: { cost: @course.cost, description: @course.description, entity_id: @course.entity_id, final_date: @course.final_date, initial_date: @course.initial_date, location_id: @course.location_id, name: @course.name, person_id: @course.person_id } }
    end

    assert_redirected_to course_url(Course.last)
  end

  test "should show course" do
    get course_url(@course)
    assert_response :success
  end

  test "should get edit" do
    get edit_course_url(@course)
    assert_response :success
  end

  test "should update course" do
    patch course_url(@course), params: { course: { cost: @course.cost, description: @course.description, entity_id: @course.entity_id, final_date: @course.final_date, initial_date: @course.initial_date, location_id: @course.location_id, name: @course.name, person_id: @course.person_id } }
    assert_redirected_to course_url(@course)
  end

  test "should destroy course" do
    assert_difference('Course.count', -1) do
      delete course_url(@course)
    end

    assert_redirected_to courses_url
  end
end
