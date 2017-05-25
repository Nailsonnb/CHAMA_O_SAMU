require 'rails_helper'

RSpec.describe "coments/index", type: :view do
  before(:each) do
    assign(:coments, [
      Coment.create!(
        :email => "Email",
        :descricao => "MyText"
      ),
      Coment.create!(
        :email => "Email",
        :descricao => "MyText"
      )
    ])
  end

  it "renders a list of coments" do
    render
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
