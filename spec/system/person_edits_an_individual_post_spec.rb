require "rails_helper"

RSpec.describe "Person edits an individual post" do
  it "is successful" do
    post = Post.create(
      title: Faker::Lorem.sentence,
      content: Faker::Lorem.paragraph
    )

    visit "/posts/#{post.id}/edit"

    fill_in "Title", with: "My awesome post"
    fill_in "Content", with: "tl; dr"

    click_button "Update Post"

    # expect(page).to have_text("Post was successfully updated")
    expect(page).to have_text("My awesome post")
    expect(page).to have_text("tl; dr")
  end
end
