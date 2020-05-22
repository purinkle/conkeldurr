require "rails_helper"

RSpec.describe "Person publishes a new post" do
  it "is successful" do
    visit "/posts/new"

    fill_in "Title", with: "My awesome post"
    fill_in "Content", with: "tl; dr"

    click_button "Save"

    expect(page).to have_text("Post was successfully created")
  end
end
