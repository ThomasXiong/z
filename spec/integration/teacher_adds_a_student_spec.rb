require 'rails_helper.rb'

feature "teacher should be able to go back to homepage" do
    scenario "teacher navigates through the database" do
    visit exams_path
    expect(page).to have_content("EXAM 1 LIST OF STUDENTS")
    click_link "HOMEPAGE"
    expect(page).to have_content("EXAM 1")
    expect(page).to have_content("Exam 2")
    expect(page).to have_content("Exam 3")
    expect(page).to have_content("TEACHER DATABASE")
    end
end