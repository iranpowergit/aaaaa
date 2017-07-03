do

local function run(msg, matches)
if matches[1]=="من کیم" and is_sudo(msg) then 
return  "😘😘😘😍😍عشق منی خخخ سازندمی سودومی "
elseif matches[1]=="I?" and is_sudo(msg) then 
return  "I love you bot are you my admin"
elseif matches[1]=="من کیم" and is_admin(msg) then 
return  "😎😎😎😎شما سازنده من نیستی ولی باید دستور رعایت منم "
elseif matches[1]=="I?" and is_admin(msg) then 
return  "you aren t my creator but I listen to your comands "
elseif matches[1]=="من کیم" and is_owner(msg) then 
return  "😎😎😎تو مدیر و سازنده ای ولی برای من هیچی نیستی"
elseif matches[1]=="I?" and is_owner(msg) then 
return  "you are admin and creator"
elseif matches[1]=="من کیم" and is_mod(msg) then 
return  "😂😂مدیری مدیر "
elseif matches[1]=="I?" and is_mod(msg) then 
return  "you are admin "
else
return  "😂😀😁تو هیچی نیستی هیچی"
end

end

return {
  patterns = {
    "^(من کیم)$",
	"^([I]?)$",
	},
  run = run
}
end


--By @GODILOVEYOUME2
-- @GODILOVEYOUME
-- EDITED(ENGLISHED) BY:@M0_MAHDI_0M