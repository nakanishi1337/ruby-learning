module ActsAsCsv
  def read
    filename = self.class.to_s.downcase + '.txt'
    file = File.new(filename)
    @csv_contents = []
    file.each_with_index do |line, index|
      if index == 0
        @headers = line.chomp.split(', ')
      else
        @csv_contents << line.chomp.split(', ')
      end
    end
  end
  
  def headers
    @headers
  end
  
  def csv_contents
    @csv_contents
  end

  def each(&block)
    @csv_contents.each do |row|
      csv_row = CsvRecord.new(@headers, row)
      block.call(csv_row)
    end
  end
  
end

class CsvRecord
  def initialize(headers, values)
    @headers = headers
    @values = values
  end
  
  def method_missing(name)
    index = @headers.index(name.to_s)
    index ? @values[index] : super
  end
end


class RubyCsv
  include ActsAsCsv
end

csv = RubyCsv.new
csv.read
puts csv.headers.inspect
puts csv.csv_contents.inspect

csv.each {|row| puts row.one}