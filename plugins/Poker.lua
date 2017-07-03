--Begin Poker.lua By @GODILOVEYOUME2
do

function run(msg, matches)
local reply_id = msg['id']
local text = '😐'
if matches[1] == '😐' then
    if is_sudo(msg) then
return text
end
end 
end
return {
patterns = {
    "😐"
},
run = run
}

end
--End Poker.lua--