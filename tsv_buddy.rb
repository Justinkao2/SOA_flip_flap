# frozen_string_literal: true

# Module that can be included (mixin) to take and output TSV data
module TsvBuddy
  # def take_tsv(tsv) : This method should take a String
  # called tsv and convert it into a data structure called @data.

  def take_tsv(tsv)
    lines = tsv.split("\n")
    tag = lines[0].split("\t").map(&:chomp)
    @data = []
    lines.shift
    lines.each do |line|
      @data.push(tag.zip(line.split("\t")).to_h)
    end
  end

  # def to_tsv : This method should use any data in @data and return a String in TSV format.

  def to_tsv
    tsv = @data[0].keys.join("\t") + "\n"
    @data.each do |line|
      tsv << line.values.join("\t") + "\n"
    end
    tsv
  end
end
