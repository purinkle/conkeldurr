require "rails_helper"

RSpec.describe "Person views all posts" do
  it "is successful" do
    post = Post.create(
      title: Faker::Lorem.sentence,
      content: Faker::Lorem.paragraph
    )

    visit "/posts"

    expect(page).to have_text(post.title)
    expect(page).to have_text(post.content)
  end
end
