require 'rails_helper'

RSpec.describe FoodController, type: :controller do

  describe 'GET #new' do
    subject { get :new }

    it 'renders the new template' do
      expect(subject).to render_template(:new)
      expect(subject).to render_template('new')
      expect(subject).to render_template('food/new')
    end
  end

  describe 'POST #create' do

    it 'renders the show template' do
      post :create, :params => {
        :food => { 
          :name => 'nasi',
          :description => 'makanan pokok',
          :price => 3000
        }
      }
      expect(response).to redirect_to(assigns(:food))
    end
  end
end
