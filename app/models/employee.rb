class Employee < ApplicationRecord
  validates :first_name, :last_name, :email, :contact_number, :date_of_birth, :date_of_hiring, presence: true
  validates :email, uniqueness: true, format: { with: /\A[^@\s]+@[^@\s]+\z/ }
  validates :contact_number, format: { with: /\A\d{10}\z/, message: "should be 10 digits" }

  # chatgpt generated methods

  def age
    return nil unless date_of_birth.present?
    
    current_date = Date.today
    age = current_date.year - date_of_birth.year - ((current_date.month > date_of_birth.month || (current_date.month == date_of_birth.month && current_date.day >= date_of_birth.day)) ? 0 : 1)
    return age
  end

  def self.ransackable_attributes(auth_object = nil)
    ["address", "city", "contact_number", "date_of_birth", "date_of_hiring", "email", "first_name", "last_name", "pincode", "state"]
  end

  def full_name
    "#{first_name} #{last_name}".strip
  end

end
