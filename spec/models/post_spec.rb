require "rails_helper"

RSpec.describe Post do
  describe ".create" do
    it "persists the correct attributes" do
      post = Post.create(
        title: "My awesome post",
        content: "tl; dr"
      )

      expect(post).to have_attributes(
        title: "My awesome post",
        content: "tl; dr"
      )
    end
  end
end
