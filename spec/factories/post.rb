Factory.define :post do |post|
  post.title "The beginning"
  post.content "A very interesting and insightful post."
  post.extended_content "So many thins to say so we had to use this field."
  post.association :author, :factory => :user
end
