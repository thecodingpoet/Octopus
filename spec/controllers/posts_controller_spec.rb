require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  describe 'GET #index' do
    it "renders :index template" do
      get :index 
      expect(response).to render_template(:index)
    end

    it "asssigns posts" do
      post = create(:governor_post)
      get :index 
      expect(assigns(:posts)).to match_array([post])
    end

    it "assigns lists" do
      list = create(:list)
      get :index 
      expect(assigns(:lists)).to include(include(list.name, list.category))
    end
  end
end
