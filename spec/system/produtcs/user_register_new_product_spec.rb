require 'rails_helper'

describe 'usuário cadastra um produto' do 
    context "a partir da tela inicial" do
        it "com sucesso" do

            visit root_path 
            click_on 'Cadastrar produto'

            fill_in "Nome",	with: "Monitor Gamer"
            fill_in "Código", with: "MOG XPDR"
            fill_in "Altura", with: "20"
            fill_in "Peso", with: "100"

            click_on "Cadastrar"

            expect(current_path).to eq root_path
            expect(page).to have_content "Monitor Gamer"
            expect(page).to have_content "MOG XPDR"
            expect(page).to have_content "20"
            expect(page).to have_content "100"
        end
        it  'e vê o produto ao clicar no nome' do 
            
        end
    end
    
end