require "rails_helper"

RSpec.describe Mechanic, type: :model do
  describe "relationships and validations" do
    it { should have_many(:ride_mechanics) }
    it { should have_many(:rides).through(:ride_mechanics) }
    it { should have_many(:amusement_parks).through(:rides) }

    it { should validate_presence_of :name }
    it { should validate_presence_of :years_experience }
  end
end