local coursepanel = {
	w = 1200,
	h = 650
}

coursepanel.x = 960 - coursepanel.w * 0.5
coursepanel.y = 540 - coursepanel.h * 0.5
coursepanel.bgcolor = Color(32, 32, 32)
coursepanel.outlinecolor = Color(54, 55, 56)
coursepanel.alpha = 0.9
coursepanel.elements = {}

local function closebutton()
	AEUI:Clear()
end

local function stopbutton()
	net.Start("Course_Stop")
	net.SendToServer()
end

local function sacheck()
	return not LocalPlayer():IsSuperAdmin()
end

AEUI:AddText(coursepanel, "Time Trials - " .. game.GetMap(), "AEUIVeryLarge", 20, 30)
AEUI:AddButton(coursepanel, "  X  ", closebutton, "AEUILarge", coursepanel.w - 47, 0)

local stopbutton = AEUI:AddButton(coursepanel, "Return to Freeplay", stopbutton, "AEUILarge", coursepanel.w - 295, coursepanel.h - 50)
stopbutton.greyed = sacheck

local courselist = {
	w = 800,
	h = 450,
	x = 979.2 - coursepanel.w * 0.5,
	y = 648 - coursepanel.h * 0.5,
	bgcolor = Color(32, 32, 32),
	outlinecolor = Color(54, 55, 56),
	alpha = 0.9,
	elements = {}
}

function OpenCourseMenu()
	AEUI:AddPanel(coursepanel)
	AEUI:AddPanel(courselist)

	local dir = "beatrun/courses/" .. game.GetMap() .. "/"
	local dirsearch = dir .. "*.txt"
	local files = file.Find(dirsearch, "DATA", "datedesc")

	PrintTable(files)
	table.Empty(courselist.elements)

	for k, v in pairs(files) do
		local data = file.Read(dir .. v, "DATA")
		local course = util.Decompress(data) or data

		if course then
			course = util.JSONToTable(course)
			local courseentry = AEUI:AddText(courselist, course[5] or "ERROR", "AEUILarge", 10, 40 * #courselist.elements)
			local courseid = v:Split(".txt")[1]

			function courseentry:onclick()
				LocalPlayer():EmitSound("buttonclick.wav")
				LoadCourse(courseid)
			end

			courseentry.greyed = sacheck
		end
	end
end

hook.Add("InitPostEntity", "CourseMenuCommand", function()
	concommand.Add("Beatrun_CourseMenu", OpenCourseMenu)
	hook.Remove("InitPostEntity", "CourseMenuCommand")
end)

concommand.Add("Beatrun_CourseMenu", OpenCourseMenu)