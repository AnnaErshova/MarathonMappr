require 'rails_helper'

RSpec.describe "marathons/edit", type: :view do
  before(:each) do
    @marathon = assign(:marathon, Marathon.create!(
      :name => "MyString",
      :city => "MyString",
      :country => "MyString",
      :date_description => "MyString",
      :month => 1,
      :year => 1,
      :day => 1,
      :kind => "MyString",
      :latitude => 1.5,
      :longitude => 1.5
    ))
  end

  it "renders the edit marathon form" do
    render

    assert_select "form[action=?][method=?]", marathon_path(@marathon), "post" do

      assert_select "input#marathon_name[name=?]", "marathon[name]"

      assert_select "input#marathon_city[name=?]", "marathon[city]"

      assert_select "input#marathon_country[name=?]", "marathon[country]"

      assert_select "input#marathon_date_description[name=?]", "marathon[date_description]"

      assert_select "input#marathon_month[name=?]", "marathon[month]"

      assert_select "input#marathon_year[name=?]", "marathon[year]"

      assert_select "input#marathon_day[name=?]", "marathon[day]"

      assert_select "input#marathon_kind[name=?]", "marathon[kind]"

      assert_select "input#marathon_latitude[name=?]", "marathon[latitude]"

      assert_select "input#marathon_longitude[name=?]", "marathon[longitude]"
    end
  end
end
