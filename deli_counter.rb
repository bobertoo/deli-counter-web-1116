# Write your code here.
def line(queue)
  counter = 1
  report = "The line is currently:"
  emptyLine = "The line is currently empty."
  if queue[0]
    queue.each do |queuer|
        report += " #{counter}. #{queuer}"
        counter += 1
    end
    puts report
  else
    puts emptyLine
  end
end

def take_a_number(queue, queuer)
  queue << queuer
  puts "Welcome, #{queuer}. You are number #{queue.size} in line."
end

def now_serving(queue)
  if queue[0]
    queuer = queue.shift
    puts "Currently serving #{queuer}."
  else
    puts "There is nobody waiting to be served!"
  end
end
