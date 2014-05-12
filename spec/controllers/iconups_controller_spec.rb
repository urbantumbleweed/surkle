require 'spec_helper'

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

describe IconupsController do

  # This should return the minimal set of attributes required to create a valid
  # Iconup. As you add validations to Iconup, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "session" => "" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # IconupsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all iconups as @iconups" do
      iconup = Iconup.create! valid_attributes
      get :index, {}, valid_session
      assigns(:iconups).should eq([iconup])
    end
  end

  describe "GET show" do
    it "assigns the requested iconup as @iconup" do
      iconup = Iconup.create! valid_attributes
      get :show, {:id => iconup.to_param}, valid_session
      assigns(:iconup).should eq(iconup)
    end
  end

  describe "GET new" do
    it "assigns a new iconup as @iconup" do
      get :new, {}, valid_session
      assigns(:iconup).should be_a_new(Iconup)
    end
  end

  describe "GET edit" do
    it "assigns the requested iconup as @iconup" do
      iconup = Iconup.create! valid_attributes
      get :edit, {:id => iconup.to_param}, valid_session
      assigns(:iconup).should eq(iconup)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Iconup" do
        expect {
          post :create, {:iconup => valid_attributes}, valid_session
        }.to change(Iconup, :count).by(1)
      end

      it "assigns a newly created iconup as @iconup" do
        post :create, {:iconup => valid_attributes}, valid_session
        assigns(:iconup).should be_a(Iconup)
        assigns(:iconup).should be_persisted
      end

      it "redirects to the created iconup" do
        post :create, {:iconup => valid_attributes}, valid_session
        response.should redirect_to(Iconup.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved iconup as @iconup" do
        # Trigger the behavior that occurs when invalid params are submitted
        Iconup.any_instance.stub(:save).and_return(false)
        post :create, {:iconup => { "session" => "invalid value" }}, valid_session
        assigns(:iconup).should be_a_new(Iconup)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Iconup.any_instance.stub(:save).and_return(false)
        post :create, {:iconup => { "session" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested iconup" do
        iconup = Iconup.create! valid_attributes
        # Assuming there are no other iconups in the database, this
        # specifies that the Iconup created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Iconup.any_instance.should_receive(:update).with({ "session" => "" })
        put :update, {:id => iconup.to_param, :iconup => { "session" => "" }}, valid_session
      end

      it "assigns the requested iconup as @iconup" do
        iconup = Iconup.create! valid_attributes
        put :update, {:id => iconup.to_param, :iconup => valid_attributes}, valid_session
        assigns(:iconup).should eq(iconup)
      end

      it "redirects to the iconup" do
        iconup = Iconup.create! valid_attributes
        put :update, {:id => iconup.to_param, :iconup => valid_attributes}, valid_session
        response.should redirect_to(iconup)
      end
    end

    describe "with invalid params" do
      it "assigns the iconup as @iconup" do
        iconup = Iconup.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Iconup.any_instance.stub(:save).and_return(false)
        put :update, {:id => iconup.to_param, :iconup => { "session" => "invalid value" }}, valid_session
        assigns(:iconup).should eq(iconup)
      end

      it "re-renders the 'edit' template" do
        iconup = Iconup.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Iconup.any_instance.stub(:save).and_return(false)
        put :update, {:id => iconup.to_param, :iconup => { "session" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested iconup" do
      iconup = Iconup.create! valid_attributes
      expect {
        delete :destroy, {:id => iconup.to_param}, valid_session
      }.to change(Iconup, :count).by(-1)
    end

    it "redirects to the iconups list" do
      iconup = Iconup.create! valid_attributes
      delete :destroy, {:id => iconup.to_param}, valid_session
      response.should redirect_to(iconups_url)
    end
  end

end
