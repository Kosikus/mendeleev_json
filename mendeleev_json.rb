require "json"

file_path = File.join(".", "elements.json")
elements = JSON.parse(File.read(file_path, encoding: "UTF-8"))

puts "У нас есть #{elements.size} элементов:"
puts elements.keys.join("\n")
puts

puts "Первооткрывателей какого из элементов вывести на экран?"
element = gets.encode('UTF-8').chomp
puts

if elements.key?(element)
  puts "Первооткрыватель элемента #{element}: #{elements[element]}"
else
  puts "Неизвестный элемент"
end
