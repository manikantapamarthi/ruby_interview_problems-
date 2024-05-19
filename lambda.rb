def batman_ironman_lambda
  v = lambda {return "this is return block"}
  v.call
  "this is outside block"
end

puts batman_ironman_lambda



def batman_ironman_proc
  v =   Proc.new {return "proc block"}

  v.call
  "outside proc"
end

# puts batman_ironman_proc