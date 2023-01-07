require_relative 'gift_card'

RSpec.describe GiftCard do
    let(:g) { GiftCard.new }

    it "fails with improper input" do
        expect {g.find("prices.txt", "plerp")}.to output("improper input\n").to_stdout
    end

    it "fails with no file" do
        expect {g.find("flerp", "1000")}.to output("file not found\n").to_stdout
    end

    it "fails with input: 1100" do
        expect {g.find("prices.txt", "1100")}.to output("Not possible\n").to_stdout
    end

    it "passes with input: 2500" do
        output = g.find("prices.txt", "2500")
        expect(output).to include("Candybar 500", "Earmuffs 2000")
    end

    it "passes with input: 2300" do
        output = g.find("prices.txt", "2300")
        expect(output).to include("Book 700", "Headphones 1400")
    end

    it "passes with input: 10000" do
        output = g.find("prices.txt", "10000")
        expect(output).to include("Earmuffs 2000", "Speaker 6000")
    end
end
