require "toy"
require "bst"

describe Toy do
    context "factorial" do
        it "When passed a value of five it returns 120" do
            expect(Toy.factorial(5)).to eq(120)
        end
    end

    context "is_palindrome" do 
        it "When passed dog a value of false should be returned" do 
            expect(Toy.is_palindrome("dog")).to eq(false)
        end

        it "When passed the string dad, a value of true is returned" do
            expect(Toy.is_palindrome("dad")).to eq(true)
        end

        it "When passed an empty string, a value of true is returned" do 
            expect(Toy.is_palindrome("")).to eq(true)
        end
    end

    context "reverse" do 
        it "produces output kooc" do 
            expect(Toy.reverse 'cook').to eq("kooc")
        end

        it "produces output retsaoc" do 
            expect(Toy.reverse 'coaster').to eq("retsaoc")
        end
    end

    context "When given a binary search tree" do
        bst = Toy.generate_bst
        context "When given the largest_value_in_bst method" do
            it "returns a value of 99 as the largest value" do
                expect(Toy.largest_value_in_bst bst.root).to eq(99)
            end
        end

        context "When given the smallest_value_in_bst method" do 
            it "returns a value of 1" do 
                expect(Toy.smallest_value_in_bst bst.root).to eq(1)
            end
        end
    end

    context "When given a HASH a duplicate is created" do
        o_hash = {
            name: "Codi Sordelet",
            age: 27,
            address: {
                street: "545 North Ave",
                unit: "Unit 2020",
                zip_code: "30308"
            },
            interests: ["cooking", "running", "music"]
        }

        cloned_hash = Toy.deep_clone_hash o_hash

        it "The names on both objects are equal" do
            expect(cloned_hash[:name]).to eq(o_hash[:name])
        end

        it "They have the same interests" do 
            expect(cloned_hash[:interests].length).to eq(o_hash[:interests].length)
        end
    end

    it "fib returns 13 when given 7" do
        expect(Toy.fib 7).to eq(13)
    end

    it "fib returns 8 when given 6" do
        expect(Toy.fib 7).to eq(13)
    end

    it "fib returns 8 when given 6" do
        expect(Toy.fib 7).to eq(13)
    end

    it "BMI is 32" do 
        expect(Toy.get_bmi(76,269)).to eq(33)
    end

    it "BMI class is obese" do 
        expect(Toy.get_bmi_class(30)).to eq("OBESE")
    end

    it "BMI class is underweight" do 
        expect(Toy.get_bmi_class(15)).to eq("UNDERWEIGHT")
    end
end