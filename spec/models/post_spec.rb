require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Post do
  before(:each) do
    @post = Factory.build(:post)
  end

  it "should create a new instance given valid attributes" do
    @post.save!
  end

  should_validate_presence_of :title, :content, :author_id
  should_belong_to :author
end
