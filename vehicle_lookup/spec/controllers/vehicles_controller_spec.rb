require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe VehiclesController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Vehicle. As you add validations to Vehicle, be sure to
  # adjust the attributes here as well.
let(:valid_attributes) { { price: 9000, 
                                  registration: 'WF12YKN',
                                  manufacturer: 'Ford'} }


  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # VehiclesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all vehicles as @vehicles" do
      vehicle = Vehicle.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(assigns(:vehicles)).to eq([vehicle])
    end
  end

  describe "GET #show" do
    it "assigns the requested vehicle as @vehicle" do
      vehicle = Vehicle.create! valid_attributes
      get :show, params: {id: vehicle.to_param}, session: valid_session
      expect(assigns(:vehicle)).to eq(vehicle)
    end
  end

  describe "GET #new" do
    it "assigns a new vehicle as @vehicle" do
      get :new, params: {}, session: valid_session
      expect(assigns(:vehicle)).to be_a_new(Vehicle)
    end
  end

  describe "GET #edit" do
    it "assigns the requested vehicle as @vehicle" do
      vehicle = Vehicle.create! valid_attributes
      get :edit, params: {id: vehicle.to_param}, session: valid_session
      expect(assigns(:vehicle)).to eq(vehicle)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Vehicle" do
        expect {
          post :create, params: {vehicle: valid_attributes}, session: valid_session
        }.to change(Vehicle, :count).by(1)
      end

      it "assigns a newly created vehicle as @vehicle" do
        post :create, params: {vehicle: valid_attributes}, session: valid_session
        expect(assigns(:vehicle)).to be_a(Vehicle)
        expect(assigns(:vehicle)).to be_persisted
      end

      it "redirects to the created vehicle" do
        post :create, params: {vehicle: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Vehicle.last)
      end
    end

  end

  describe "DELETE #destroy" do
    it "destroys the requested vehicle" do
      vehicle = Vehicle.create! valid_attributes
      expect {
        delete :destroy, params: {id: vehicle.to_param}, session: valid_session
      }.to change(Vehicle, :count).by(-1)
    end

    it "redirects to the vehicles list" do
      vehicle = Vehicle.create! valid_attributes
      delete :destroy, params: {id: vehicle.to_param}, session: valid_session
      expect(response).to redirect_to(vehicles_url)
    end
  end

end