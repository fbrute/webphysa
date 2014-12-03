require "rails_helper"

RSpec.describe StaticPagesController, type: :controller do
  describe "Page Accueil" do

    it "produit le modèle accueil" do
      #get :accueil
      get root_path 
      expect(response).to render_template("accueil")
      expect(response).to have_selector('title',
                                              text: "Département de Physique",
                                              visible: false)
    end
  end
end
