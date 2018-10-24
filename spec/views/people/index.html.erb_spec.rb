require 'rails_helper'

RSpec.describe "people/index", type: :view do
  before(:each) do
    assign(:people, [
      Person.create!(
        :name => "Name",
        :age => 2,
        :number => "Number"
      ),
      Person.create!(
        :name => "Name",
        :age => 2,
        :number => "Number"
      )
    ])
  end

  it "renders a list of people" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Number".to_s, :count => 2
  end
end
