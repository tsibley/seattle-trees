publish:
	ssh tsibley.net 'cd www/trees/seattle/ && git pull'

trees.js:
	@echo "// Source: https://data.seattle.gov/api/views/5979-eagq/rows.json"		> $@
	@echo "//         https://data.seattle.gov/Community/Heritage-Trees/5979-eagq" >> $@
	@echo -n "var trees = "														   >> $@
	curl https://data.seattle.gov/api/views/5979-eagq/rows.json 				   >> $@
	@echo ";" 																	   >> $@
