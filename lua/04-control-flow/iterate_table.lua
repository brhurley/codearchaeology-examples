local scores = {math = 90, science = 85, history = 78}

-- pairs() visits every key, but the order is unspecified.
-- Collect the keys, then sort them for deterministic output.
local subjects = {}
for subject in pairs(scores) do
    subjects[#subjects + 1] = subject
end
table.sort(subjects)

for _, subject in ipairs(subjects) do
    print(subject .. " = " .. scores[subject])
end
