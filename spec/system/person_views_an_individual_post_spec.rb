require "rails_helper"

RSpec.describe "Person views an individual post" do
  it "is successful" do
    post = 2.times.map do
      Post.create(
        title: Faker::Lorem.sentence,
        content: Faker::Lorem.paragraph
      )
    end.sample

    visit "/posts/#{post.id}"

    expect(page).to have_text(post.title)
    expect(page).to have_text(post.content)
  end
end
