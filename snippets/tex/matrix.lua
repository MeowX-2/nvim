return {
	s({ trig = "matrix(%d)x(%d)", regTrig = true }, {
		d(1, function(args, snip)
			local rows = tonumber(snip.captures[1])
			local cols = tonumber(snip.captures[2])
			local nodes = {}
			local id = 1
			for j = 1, rows do
				table.insert(nodes, i(id, "x"))
				id = id + 1
				for k = 2, cols do
					table.insert(nodes, t(" & "))
					table.insert(nodes, i(id, "x"))
					id = id + 1
				end
				table.insert(nodes, t({ " \\\\", "" }))
			end
			-- fix last node.
			nodes[#nodes] = t(" \\\\")
			return sn(nil, nodes)
		end, {}),
	}),
}
