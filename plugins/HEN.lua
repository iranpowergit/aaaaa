do

function run(msg, matches)
  return "سلام , " .. matches[1]
end

return {
  description = "hi to someone", 
  usage = "hi to [name]",
  patterns = {
    "^hi to (.*)$",
    "^Hi to (.*)$",
	"^سلام به(.*)$"
  }, 
  run = run 
}

end