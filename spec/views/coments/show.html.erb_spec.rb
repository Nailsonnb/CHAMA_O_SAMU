require 'rails_helper'

RSpec.describe "coments/show", type: :view do
  before(:each) do
    @coment = assign(:coment, Coment.create!(
      :email => "Email",
      :descricao => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/MyText/)
  end
end
