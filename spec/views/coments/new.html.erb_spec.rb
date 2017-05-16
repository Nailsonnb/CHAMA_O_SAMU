require 'rails_helper'

RSpec.describe "coments/new", type: :view do
  before(:each) do
    assign(:coment, Coment.new(
      :email => "MyString",
      :descricao => "MyText"
    ))
  end

  it "renders new coment form" do
    render

    assert_select "form[action=?][method=?]", coments_path, "post" do

      assert_select "input#coment_email[name=?]", "coment[email]"

      assert_select "textarea#coment_descricao[name=?]", "coment[descricao]"
    end
  end
end
