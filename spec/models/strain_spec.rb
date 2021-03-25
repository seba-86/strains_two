require 'rails_helper'

RSpec.describe Strain, type: :model do #ok
    
    describe "validation model" do
        it "validate uniqueness strain name" do
            should validate_uniqueness_of(:name)
        end

        it "validate with name nil" do #ok
            strain = Strain.new(name: nil)
            expect(strain).to_not be_valid
        end
        
        it "validate with name empty " do #ok
            strain = Strain.new(name: "")
            expect(strain).to_not be_valid
        end

        it "validate with a field 'Carmenere" do #ok
            strain = Strain.new(name: "Carmenere")
            expect(strain).to_not be_invalid
        end
    end

        
end

