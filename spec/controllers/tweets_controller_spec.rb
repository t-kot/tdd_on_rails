require 'spec_helper'

describe TweetsController do

  def valid_attributes
    {
      body: "This tweet is valid"
    }
  end
  before do
    @user = FactoryGirl.create(:user)
    @tweet = FactoryGirl.create(:tweet, user:@user)
  end

  describe "GET index" do
    it "assigns the requested users tweet as @tweets" do
      get :index, {user_id: @user}
      assigns(:tweets).should eq([@tweet])
    end
  end

  describe "GET show" do
    it "assigns the requested tweet as @tweet" do
      get :show, {id: @tweet}
      assigns(:tweet).should eq @tweet
    end
  end

  describe "POST create" do
    login_user
    describe "with valid params" do
      it "assigns newly created tweet as @tweet" do
        post :create, {:tweet=>valid_attributes}
        assigns(:tweet).should be_a(Tweet)
        assigns(:tweet).should be_persisted
      end

      it "creates a new tweet" do
        expect{
          post :create, {tweet:valid_attributes}
        }.to change(Tweet, :count).by(1)
      end

      it "redirects to tweet list" do
        #post :create, {tweet:valid_attributes}
        #response.should redirect_to 
      end
    end

    describe "with invalid params" do
      it "assigns newly created but unsaved tweet as @tweet" do
        Tweet.any_instance.stub(:save).and_return(false)
        post :create, {tweet:{body:""}}
        assigns(:tweet).should be_a_new(Tweet)
      end

      it "re-render new template" do
        Tweet.any_instance.stub(:save).and_return(false)
        post :create, {tweet:{body:""}}
        response.should render_template("new")
      end
    end
  end

  describe "DELETE destroy" do
  end

end
