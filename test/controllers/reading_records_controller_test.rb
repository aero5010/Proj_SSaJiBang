require 'test_helper'

class ReadingRecordsControllerTest < ActionController::TestCase
  setup do
    @reading_record = reading_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reading_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reading_record" do
    assert_difference('ReadingRecord.count') do
      post :create, reading_record: { content: @reading_record.content, end_time: @reading_record.end_time, start_time: @reading_record.start_time, title: @reading_record.title, user_id: @reading_record.user_id }
    end

    assert_redirected_to reading_record_path(assigns(:reading_record))
  end

  test "should show reading_record" do
    get :show, id: @reading_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reading_record
    assert_response :success
  end

  test "should update reading_record" do
    patch :update, id: @reading_record, reading_record: { content: @reading_record.content, end_time: @reading_record.end_time, start_time: @reading_record.start_time, title: @reading_record.title, user_id: @reading_record.user_id }
    assert_redirected_to reading_record_path(assigns(:reading_record))
  end

  test "should destroy reading_record" do
    assert_difference('ReadingRecord.count', -1) do
      delete :destroy, id: @reading_record
    end

    assert_redirected_to reading_records_path
  end
end
