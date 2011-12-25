require 'spec_helper'

describe UsersController do
  render_views

  describe "GET 'show'" do
    
    before(:each) do
      @user = Factory(:user)
      @users = [@user,]
        30.times do
          @users << Factory(:user, :name => Factory.next(:name),
                                   :email => Factory.next(:email))
      end

    end
    
    it "should be successful" do
      get :show, :id => @user
      response.should be_success
    end

    it "should find the right user" do
      get :show, :id => @user
      assigns(:user).should == @user
    end

     it "should have an element for each user" do
        get :index
        @users[0..2].each do |user|
          response.should have_selector("li", :content => "Example User")
        end
      end

  end

end

