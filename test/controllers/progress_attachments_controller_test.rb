require 'test_helper'

class ProgressAttachmentsControllerTest < ActionController::TestCase
  setup do
    @progress_attachment = progress_attachments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:progress_attachments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create progress_attachment" do
    assert_difference('ProgressAttachment.count') do
      post :create, progress_attachment: { image: @progress_attachment.image, progress_id: @progress_attachment.progress_id }
    end

    assert_redirected_to progress_attachment_path(assigns(:progress_attachment))
  end

  test "should show progress_attachment" do
    get :show, id: @progress_attachment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @progress_attachment
    assert_response :success
  end

  test "should update progress_attachment" do
    patch :update, id: @progress_attachment, progress_attachment: { image: @progress_attachment.image, progress_id: @progress_attachment.progress_id }
    assert_redirected_to progress_attachment_path(assigns(:progress_attachment))
  end

  test "should destroy progress_attachment" do
    assert_difference('ProgressAttachment.count', -1) do
      delete :destroy, id: @progress_attachment
    end

    assert_redirected_to progress_attachments_path
  end
end
