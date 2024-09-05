local S = minetest.get_translator(minetest.get_current_modname())

tt.register_snippet(function(itemstring)
	local def = minetest.registered_items[itemstring]
	local desc
	local eatable = def.groups.eatable

	if eatable then
		local prefix = ""

		if eatable > 0 then
			prefix = "+"
		end

		desc = S("Food item")
		local msg = prefix .. S("@1 food points", eatable)
		desc = desc .. "\n" .. msg
	end

	return desc
end)
