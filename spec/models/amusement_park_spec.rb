require "rails_helper"

RSpec.describe AmusementPark, type: :model do
  describe "relationships" do
    it { should have_many(:rides) }
    it { should have_many(:ride_mechanics).through(:rides)}
    it { should have_many(:mechanics).through(:ride_mechanics)}
    it { should validate_presence_of :name}
    it { should validate_presence_of :admission_cost}
  end
end