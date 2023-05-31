require 'rails_helper'

describe 'usuário acessa tela principal' do
    it 'com sucesso' do 

        visit root_path

        expect(current_path).to eq root_path
        expect(page).to have_content 'Loja de produtos seminovos'  
    end
    it 'e vê produtos' do
        Product.create!(name: 'Televisão', code:'TV OLSKSJ', height: 10, weight: 10)
        Product.create!(name: 'Teclado', code:'Teclado AKDHLS', height: 3, weight: 5)

        visit root_path

        expect(page).to have_content 'Nome: Televisão'
        expect(page).to have_content 'Código: TV OLSKSJ'
        expect(page).to have_content 'Altura: 10'
        expect(page).to have_content 'Peso: 10'
        expect(page).to have_content 'Nome: Teclado'
        expect(page).to have_content 'Código: Teclado AKDHLS'
        expect(page).to have_content 'Altura: 3'
        expect(page).to have_content 'Peso: 5'
    end
end 