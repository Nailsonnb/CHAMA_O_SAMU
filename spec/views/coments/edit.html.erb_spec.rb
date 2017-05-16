require 'rails_helper'

RSpec.describe "coments/edit", type: :view do
  before(:each) do
    @coment = assign(:coment, Coment.create!(
      :email => "MyString",
      :descricao => "MyText"
    ))
  end

  it "renders the edit coment form" do
    render

    assert_select "form[action=?][method=?]", coment_path(@coment), "post" do

      assert_select "input#coment_email[name=?]", "coment[email]"

      assert_select "textarea#coment_descricao[name=?]", "coment[descricao]"
    end
  end
end
