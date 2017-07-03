do

local function run(msg, matches)
if matches[1]=="خرید سورس" and is_sudo(msg) then 
return  "خرید سورس وایت از طریقه تلگرام @anonymousptm "
elseif matches[1]=="خرید سورس" and is_admin(msg) then
return  ""خرید سورس وایت از طریقه تلگرام @anonymousptm "
elseif matches[1]=="خرید سورس" and is_owner(msg) then 
return  ""خرید سورس وایت از طریقه تلگرام @anonymousptm "
elseif matches[1]=="خرید سورس" and is_mod(msg) then 
return  "خرید سورس وایت از طریقه تلگرام @anonymousptm " 
else
return  "خرید سورس وایت از طریقه تلگرام @anonymousptm "
end

end

return {
  patterns = {
    "^(خرید سورس)$",
    },
  run = run
}
end


--By @GODILOVEYOUME2
-- @GODILOVEYOUME