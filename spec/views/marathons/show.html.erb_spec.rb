require 'rails_helper'

RSpec.describe "marathons/show", type: :view do
  before(:each) do
    @marathon = assign(:marathon, Marathon.create!(
      :name => "Name",
      :city => "City",
      :country => "Country",
      :date_description => "Date Description",
      :month => 1,
      :year => 2,
      :day => 3,
      :kind => "Kind",
      :latitude => 1.5,
      :longitude => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/Date Description/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Kind/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
  end
end
