require 'rails_helper.rb'

feature "teacher's actions" do
    scenario "teacher navigates through the database" do
    visit exams_path
    expect(page).to have_content("LIST OF STUDENTS")
    click_link "HOMEPAGE"
    expect(page).to have_content("FINAL EXAM")
    expect(page).to have_content("TEACHER DATABASE")
    end
    
    scenario "teacher sees submit form" do
    visit root_path
    click_link "FINAL EXAM"
    expect(page).to have_field("Name")
    expect(page).to have_field("Student number")
    end
    
    scenario "teacher adds new student to system" do
    visit new_exam_path
    fill_in "Name", with: "Yolo"
    fill_in "Student number", with: "123123124"
    click_button "Save Exams"
    expect(page).to have_content("Yolo")
    expect(page).to have_content("123123124")
    end
    
    scenario "teacher looks at database" do
    visit root_path
    expect(page).to have_content("Homepage")
    click_link "TEACHER DATABASE"
    expect(page).to have_content("LIST OF STUDENTS")
    end
    
end