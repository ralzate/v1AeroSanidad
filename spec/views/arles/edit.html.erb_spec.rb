require 'rails_helper'

RSpec.describe "arles/edit", type: :view do
  before(:each) do
    @arl = assign(:arl, Arl.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit arl form" do
    render

    assert_select "form[action=?][method=?]", arl_path(@arl), "post" do

      assert_select "input#arl_name[name=?]", "arl[name]"
    end
  end
end
