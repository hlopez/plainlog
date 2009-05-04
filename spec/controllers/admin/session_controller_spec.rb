require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Admin::SessionController do
  before(:each) do
    stub(User).authenticate("rafael@escritores.org", "123") { self }
  end

  it "should redirect after successful login" do
    post :create, :email => "rafael@escritores.org", :password => "123"
    session[:user].should_not be_nil
    response.should be_redirect
  end
end
