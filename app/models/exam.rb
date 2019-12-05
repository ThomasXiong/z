class Exam < ApplicationRecord
   
    validates :name, presence: true, length: {maximum: 7}, format: { with: /\A[a-zA-Z0-9\s]+\z/i,
    message: "can only be letters" }
    
    validates :student_number, presence: true, length: {maximum: 2}, format: { with: /86/,
    message: "can only numbers" }
     
end
