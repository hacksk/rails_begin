class Student < ApplicationRecord
  validates :name, presence: true
  validates :age, presence: true
  validates :dob, presence: true
  validates :address, presence: true,
                    length: { minimum: 5 }
end
