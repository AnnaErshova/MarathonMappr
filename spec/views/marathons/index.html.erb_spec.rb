require 'rails_helper'

RSpec.describe "marathons/index", type: :view do
  before(:each) do
    assign(:marathons, [
      Marathon.create!(
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
      ),
      Marathon.create!(
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
      )
    ])
  end

  it "renders a list of marathons" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "Date Description".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Kind".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
