require 'rails_helper'

  feature 'User Access restricted by role' do
    context 'As a Cityzen' do
      it 'can create an issue' do
        sign_up
        click_link "Report Issue"
        fill_in "Title", with: 'title of problem'
        fill_in "Description", with: "There is a problem with the street"
        click_button "Create Issue"
        expect(page).to have_content("Issue was successfully created.")
      end

      it 'can access own issues' do

      end
      it 'can access other users issues' do

      end
      it 'can update its own issue' do

      end
      it 'cannot update other cityzens issues' do

      end
      it 'can delete own issues' do

      end
      it 'cannot delete other cityzens issues' do

      end
    end
  end