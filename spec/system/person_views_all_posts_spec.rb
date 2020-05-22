require "rails_helper"

RSpec.describe "Person views all posts" do
  it "is successful" do
    Post.create(
      title: "My awesome post",
      content: "tl; dr"
    )

    visit "/posts"

    expect(page).to have_text("My awesome post")
    expect(page).to have_text("tl; dr")
  end
end
