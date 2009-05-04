class Post < ActiveRecord::Base
  belongs_to :author, :class_name => 'User', :foreign_key => :author_id
  validates_presence_of :title, :content, :author_id
end
