-- by:mahdimds
local function is_channel_disabled( receiver )
	if not _config.disabled_channels then
		return false
	end

	if _config.disabled_channels[receiver] == nil then
		return false
	end

  return _config.disabled_channels[receiver]
end

local function enable_channel(receiver)
	if not _config.disabled_channels then
		_config.disabled_channels = {}
	end

	if _config.disabled_channels[receiver] == nil then
		return 'انلاین شد'
	end
	
	_config.disabled_channels[receiver] = false

	save_config()
	return "انلاین شد"
end

local function disable_channel( receiver )
	if not _config.disabled_channels then
		_config.disabled_channels = {}
	end
	
	_config.disabled_channels[receiver] = true

	save_config()
	return "افلاین شد"
end

local function pre_process(msg)
	local receiver = get_receiver(msg)
	
	-- If sender is moderator then re-enable the channel
	--if is_sudo(msg) then
	if is_momod(msg) then
	  if msg.text == "on" or "روشن" then
	    enable_channel(receiver)
	  end
	end

  if is_channel_disabled(receiver) then
  	msg.text = ""
  end

	return msg
end

local function run(msg, matches)
	local receiver = get_receiver(msg)
	-- Enable a channel
	if matches[1] == 'on' or 'روشن' then
		return enable_channel(receiver)
	end
	-- Disable a channel
	if matches[1] == 'off' or 'خاموش' then
		return disable_channel(receiver)
	end
end

return {
	description = "Robot Switch", 
	usage = {
		"/bot on : enable robot in group",
		"/bot off : disable robot in group" },
	patterns = {
		"^(on)",
		"^ (off)",
		"^(روشن)",
		"^(خاموش)"
		}, 
	run = run,
	privileged = true,
	--moderated = true,
	pre_process = pre_process
}
