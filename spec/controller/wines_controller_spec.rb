require "rails_helper"

RSpec.describe WinesController, type: :controller do
    describe 'GET #index' do
        before {get :index}
        
        it { should respond_with(302) }
        it {should render_template('index')} 
        
        it "assigns @wines" do
            wine = Wine.create(name: "testing" )
            get :index
            expect(assigns(:wines)).to eq([wine])
          end

        # it "render the index template" do
        #     get :index
        #     expect(response).to render_template('index')
        #     
        # end
        
    end
    describe 'GET #show' do 
        it {should render_template('show')}
    end

end

                         