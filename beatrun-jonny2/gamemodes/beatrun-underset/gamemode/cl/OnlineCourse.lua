local apikey = CreateClientConVar("Beatrun_Apikey", "0", true, false, "API key")
local domain = CreateClientConVar("Beatrun_Domain", "courses.beatrun.ru", true, false, "Online courses domain")


local function GetCurrentMapWorkshopID()
	for _, addon in pairs(engine.GetAddons()) do
		if not addon or not addon.title or not addon.wsid or not addon.mounted or not addon.downloaded then continue end

		_, addon_folders = file.Find("*", addon.title)

		for _, dir in ipairs(addon_folders) do
			if dir ~= "maps" then continue end
			if file.Exists("maps/" .. game.GetMap() .. ".bsp", addon.title) then return addon.wsid end
		end
	end

	return 0
end

function UploadCourse()
	if Course_Name == "" or Course_ID == "" then return print("Can't upload in Freeplay") end
	local url = domain:GetString() .. "/upload.php"
	local data = file.Open("beatrun/courses/" .. game.GetMap() .. "/" .. Course_ID .. ".txt", "rb", "DATA")
	local filedata = util.Decompress(data:Read(data:Size()))

	http.Post(url, {
		key = apikey:GetString(),
		map = game.GetMap(),
		course_data = util.Base64Encode(filedata, true),
		mapid = GetCurrentMapWorkshopID()
	}, function(body, length, headers, code) -- onSuccess function
		if code == 200 then
			print("Response: " .. body)
		else
			print("Error (" .. code .. "): " .. body)
		end
	end, function(message) -- onFailure function
		print("Unexpected error: " .. message)
	end)
end

concommand.Add("Beatrun_UploadCourse", UploadCourse)

function GetCourse(sharecode)
	local url = domain:GetString() .. "/getcourse.php"
		.. "?sharecode=" .. sharecode
		.. "&map=" .. string.gsub(game.GetMap(), " ", "-")
		.. "&key=" .. apikey:GetString()

	if string.match(domain:GetString(), "datae.org") then print("WARN: You are connecting to datæ's website. This is potentially dangerous.") end

	http.Fetch(url, function(body, length, headers, code)
		if code == 200 then
			print("Success! | Response: " .. code .. " | Length: " .. length)
			print("Loading course...")
			PrintTable(headers)
			local dir = "beatrun/courses/" .. game.GetMap() .. "/"
			file.CreateDir(dir)
			local coursedata = util.Compress(body)

			if not file.Exists(dir .. sharecode .. ".txt", "DATA") then
				file.Write(dir .. sharecode .. ".txt", coursedata)
			end

			LoadCourseRaw(coursedata)

			return true
		else
			print("Error! | Response: " .. code)
			print(body)

			return false
		end
	end, function(message)
		print("An error occurred: ", message)

		return false
	end, {
		["User-Agent"] = "Valve/Steam HTTP Client 1.0 (4000)",
		["Accept-Encoding"] = "gzip"
	})
end

concommand.Add("Beatrun_LoadCode", function(ply, cmd, args, argstr)
	GetCourse(args[1])
end)

function UpdateCourse(course_code)
	if Course_Name == "" or Course_ID == "" then return print("Can't upload in Freeplay") end
	if string.match(domain:GetString(), "datae.org") then return ErrorNoHaltWithStack("ERROR: You are connecting to datæ's website, which is dangerous, and this function isn't even supported there.") end

	local url = domain:GetString() .. "/updatecourse.php"
	local data = file.Open("beatrun/courses/" .. game.GetMap() .. "/" .. Course_ID .. ".txt", "rb", "DATA")
	local filedata = util.Decompress(data:Read(data:Size()))

	http.Post(url, {
		key = apikey:GetString(),
		map = string.Replace(game.GetMap(), " ", "-"),
		course_data = util.Base64Encode(filedata, true),
		code = course_code
	},
	function(body, length, headers, code) -- onSuccess function
		if code == 200 then
			print("Response: " .. body)
		else
			print("Error (" .. code .. "): " .. body)
		end
	end,
	function(message) -- onFailure function
		print("Unexpected error: " .. message)
	end)
end

concommand.Add("Beatrun_UpdateCode", function(ply, cmd, args, argstr)
	UpdateCourse(args[1])
end)