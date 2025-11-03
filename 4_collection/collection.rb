puts "=== 配列をスタックとして使用 ==="
stack = []
stack.push(1, 2, 3)
puts stack.pop
puts stack.inspect

puts "\n=== 配列をキューとして使用 ==="
queue = [1, 2, 3]
puts queue.shift
puts queue.inspect

puts "\n=== 配列をリストとして操作 ==="
list = [1, 2, 3, 4, 5]
list.insert(2, 99)
puts list.inspect
list.delete_at(1)
puts list.inspect

puts "\n=== ハッシュを配列に変換 ==="
hash = { a: 1, b: 2, c: 3 }
array = hash.to_a
puts array.inspect

puts "\n=== 配列をハッシュに変換 ==="
array = [[:a, 1], [:b, 2], [:c, 3]]
hash = array.to_h
puts hash.inspect

