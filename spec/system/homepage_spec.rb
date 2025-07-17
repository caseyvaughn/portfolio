require 'rails_helper'

RSpec.describe "Homepage", type: :system do
  it "meets all accessibility standards" do
    visit root_path

    expect(page).to be_axe_clean
  end
end
