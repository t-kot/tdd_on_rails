require 'spec_helper'

describe TweetsController do
  describe "routing" do

    it "routes to #index" do
      get("/users/1/tweets").should route_to("tweets#index", user_id:"1")
    end

    it "routes to #show" do
      get("/tweets/1").should route_to("tweets#show", id:"1")
    end

    it "routes to #new" do
      get("/tweets/new").should route_to("tweets#new")
    end

    it "routes to #create" do
      post("/tweets").should route_to("tweets#create")
    end

    it "routes to #destroy" do
      delete("/tweets/1").should route_to("tweets#destroy", id:"1")
    end

  end
end
