require 'test_helper'

class TagsOfNovelsControllerTest < ActionController::TestCase
  setup do
    @tags_of_novel = tags_of_novels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tags_of_novels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tags_of_novel" do
    assert_difference('TagsOfNovel.count') do
      post :create, tags_of_novel: { cont: @tags_of_novel.cont, novel_id: @tags_of_novel.novel_id, tag_id: @tags_of_novel.tag_id }
    end

    assert_redirected_to tags_of_novel_path(assigns(:tags_of_novel))
  end

  test "should show tags_of_novel" do
    get :show, id: @tags_of_novel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tags_of_novel
    assert_response :success
  end

  test "should update tags_of_novel" do
    put :update, id: @tags_of_novel, tags_of_novel: { cont: @tags_of_novel.cont, novel_id: @tags_of_novel.novel_id, tag_id: @tags_of_novel.tag_id }
    assert_redirected_to tags_of_novel_path(assigns(:tags_of_novel))
  end

  test "should destroy tags_of_novel" do
    assert_difference('TagsOfNovel.count', -1) do
      delete :destroy, id: @tags_of_novel
    end

    assert_redirected_to tags_of_novels_path
  end
end
