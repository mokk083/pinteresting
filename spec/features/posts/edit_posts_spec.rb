require 'rails_helper'

feature "Editing Posts" do
  scenario "Updating a post" do
    FactoryGirl.create(:post, title: 'Organic')

    visit '/blog'
    click_link 'Organic'
    click_link 'Edit Post'
    fill_in 'Title', with: 'Simply Organic'
    click_button "Update Post"

    expect(page).to have_content ('Post has been updated.')

  end
end