class Combinations
    def combine(s)
        return 1 unless check_input(s)
        sequences = []
        s.split("").each do |char|
            if char == 'X'
                if sequences.length < 1
                    sequences = ["0", "1"]
                else
                    sequence_copy = sequences.map{|sequence| "#{sequence}0"}
                    sequences = sequence_copy.concat(sequences.map!{|sequence| "#{sequence}1"})
                end
            else
                if sequences.length < 1
                    sequences = ["#{char}"] 
                else
                    sequences.map!{|sequence| "#{sequence}#{char}"}
                end
            end
        end
        puts sequences
        sequences
    end
    def check_input(s)
        return false unless s
        s.split("").each do |char|
            unless (char == "0" || char == "1" || char == "X")
                puts "improper input"
                return false
            end
        end
        return true
    end
end
