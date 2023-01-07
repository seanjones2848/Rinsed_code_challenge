# read input
# create combinations of each item with length 2
# get sums of each combination
# find highest combination possible matching price

class GiftCard
    def find(file_name, price)
        if price.to_i == 0
            puts "improper input"
            return 1
        end
        items = read_input(file_name)
        return 1 if items == 1
        combos = create_combos(items)
        sums = combos.keys.sort.select{|s| s <= price.to_i}
        if sums.length < 1
            puts "Not possible"
            return 1
        end
        puts combos[sums[-1]]
        return combos[sums[-1]]
    end
    def read_input(file_name)
        unless File.exists?(file_name)
            puts("file not found")
            return 1
        end
        file = File.open(file_name)
        file_data = file.readlines.map(&:chomp)
        file.close
        file_data
    end
    def create_combos(items)
        combinations = items.combination(2)
        combos = {}
        combinations.each do |combination|
            sum = combination.map{|c| c.split(",")[1].strip.to_i}.reduce(0, :+)
            combos[sum] = "#{combination[0].tr(',', '')}, #{combination[1].tr(',', '')}"
        end
        combos
    end
end
