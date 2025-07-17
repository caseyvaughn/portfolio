# spec/views/layouts/application.html.erb_spec.rb
require "rails_helper"

RSpec.describe "home/index.html.erb", type: :view do
  it "has a LinkedIn icon linking to the LinkedIn profile page" do
    render

    expect(rendered).to have_link(
      nil,
      href: "https://www.linkedin.com/in/caseytvaughn/",
      target: "_blank",
    )

    expect(rendered).to have_css("a[href='https://www.linkedin.com/in/caseytvaughn/'] img[alt='LinkedIn']")
  end
end
