require_relative 'combinations'

RSpec.describe Combinations do
    let(:c) { Combinations.new }

    it "fails with improper input" do
        expect {c.combine("flerp")}.to output("improper input\n").to_stdout
    end

    it "passes basic input and displays two solutions" do
        output = c.combine("X0")
        expect(output).to include("00", "10")
    end

    it "passes intermediate input and displays four solutions" do
        output = c.combine("10X10X0")
        expect(output).to include("1001000", "1001010", "1011000", "1011010")
    end

    it "uses very long random input and passes" do
        input = ""
        (0..50).each do
            r = rand(3)
            if r == 0
                input.concat("0")
            elsif r == 1
                input.concat("1")
            else
                input.concat("X")
            end
        end
        output = c.combine(input)
        puts(input)
    end
end
