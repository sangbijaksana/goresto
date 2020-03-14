require 'rails_helper'

RSpec.describe FoodController, type: :controller do

  describe "GET #new" do
    subject { get :new }

    it "renders the new template" do
      expect(subject).to render_template(:new)
      expect(subject).to render_template("new")
      expect(subject).to render_template("food/new")
    end

  end

end
