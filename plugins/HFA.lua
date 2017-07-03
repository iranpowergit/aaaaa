do

function run(msg, matches)
  return "سلام, " .. matches[1]
end

return {
  description = "hi to someone", 
  usage = "ربات سلام به [name]",
  patterns = {
    "^ربات سلام به (.*)$",
    "^ربات سلام به (.*)$"
  }, 
  run = run 
}

end