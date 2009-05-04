require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe User do
  before(:each) do
    @user = Factory.build(:user)
  end

  it "should create a new instance given valid attributes" do
    @user.save!
  end

  should_validate_presence_of :name, :email, :password_hash, :password_salt

  it "should authenticate if password matches password hash" do
    @user.save!
    User.authenticate(@user.email, "123").should == @user
  end
end
