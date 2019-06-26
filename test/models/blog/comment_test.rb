require 'test_helper'

class Blog::CommentTest < ActiveSupport::TestCase
  test "make an article with a comment on it" do
    article = Blog::Article.create!(title: "there is a bug")
    comment = Blog::Comment.create!(article: article, body: "really?")
    assert_equal "there is a bug", Blog::Comment.where(article: article).first.article.title
  end
end
