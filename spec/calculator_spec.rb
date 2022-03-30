require "calculator"

describe Calculator do
    describe ".sum" do
        context "given 0 and 0" do
          it "returns zero" do
            expect(Calculator.add(0,0)).to eq(0)
          end

          it"returns five" do 
            expect(Calculator.add(3,2)).to eq(5)
          end

          it "returns 1000000" do 
            expect(Calculator.add(500000,500000)).to eq(1000000)
          end
        end
    end
end