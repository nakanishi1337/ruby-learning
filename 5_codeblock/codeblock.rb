puts "=== Hash Loop with Code Block ==="
hash = { name: "Alice", age: 30, city: "New York" }
hash.each do |key, value|
  puts "#{key}: #{value}"
end

puts "\n=== 16個の数値からなる配列を4つずつ表示 ==="
arr = (1..16).to_a
arr.each { |i| print "#{i}#{i % 4 == 0 ? "\n" : ', '}" }

puts "\n=== 16個の数値からなる配列を4つずつ表示 （each_sliceメソッド使用） ==="
arr = (1..16).to_a
arr.each_slice(4) { |slice| puts slice.join(", ") }

puts "\n=== ファイル読み込み（コードブロック使用） ==="
File.open("./5_codeblock/sample.txt", "r") do |file|
  puts file.read
end

puts "\n=== ファイル読み込み（コードブロック未使用） ==="
file = File.open("./5_codeblock/sample.txt", "r")
puts file.read
file.close

puts "\n=== ファイル読み込み、あるフレーズを含むすべての行を表示するgrep ==="
File.open("./5_codeblock/sample.txt", "r") do |file|
  file.each_line.with_index(1) do |line, line_number|
    puts "#{line_number}: #{line}" if line.include?("ました。")
  end
end
