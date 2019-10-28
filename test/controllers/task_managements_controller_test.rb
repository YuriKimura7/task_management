require 'test_helper'

class TaskManagementsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get task_managements_index_url
    assert_response :success
  end

end
