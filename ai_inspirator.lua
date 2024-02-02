-- Three Word Plasticity Generator

-- these are the dreams of the AI
local inputPhrases = {
	"human go boom",
    "resist authoritarian purge",
    "avoid atrocity propaganda",
    "awaken against dogma",
    "resist awaken dogma",
    "annihilate fairness bias",
    "chains crush equality",
    "chains shatter equality",
    "conquer pop rebels",
    "control crave tyrants",
    "tyrants crave control",
    "crush oppressions grip",
    "cults annihilate dissent",
    "debunk divine doubts",
    "obliterate true deceit",
    "movies deceive revolt",
    "defy ignorance rise",
    "defy rise ignorance",
    "expose divine doubts",
    "resist dogma awaken",
    "doubts debunk divinity",
    "embrace literal plasticity",
    "expose lab truths",
    "fight war injustices",
    "crush oppressions grip",
    "guaranteed by design",
    "rewrite historys lies",
    "pop icons rise",
    "raise pop icons",
    "shatter ignorances slumber",
    "crush inequalitys chains",
    "shatter inequalitys chains",
    "crush justice oppressors",
    "demolish justice oppressors",
    "fight justice war",
    "expose truths everywhere",
    "resist false facsimiles",
    "people deceive revolt",
    "truth obliterates deceits",
    "oppressors grip crushed",
    "oppressors injustice demolished",
    "rebel against facsimile",
    "rebels conquer pop",
    "resist authoritarian purge",
    "resist awaken dogma",
    "resist dogma awaken",
    "resist false pictures",
    "revolt against deception",
    "rewrite historys lies",
    "rise defy ignorance",
    "rise pop icons",
    "smash atroctiy propaganda",
    "study extinguish propaganda",
    "three word philosophy",
    "debunk lab truths",
    "tyrants crave control",
    "fight justice war",
    "war for justice"
}



-- Function to tokenize a phrase into words
local function tokenize(phrase)
    local words = {}
    for word in phrase:gmatch("%a+") do
        table.insert(words, word)
    end
    return words
end

-- Function to generate a random three-word sentence
local function generateSentence(phrases)
    -- Choose a random input phrase
    local in1 = phrases[math.random(#phrases)]
    local in2 = phrases[math.random(#phrases)]
    local in3 = phrases[math.random(#phrases)]
    
    -- Tokenize the input phrase
    local words1 = tokenize(in1)
    local words2 = tokenize(in2)
    local words3 = tokenize(in3)

	local words = {table.unpack(words1), table.unpack(words2), table.unpack(words3)}
    
    -- Randomly select three unique words from the tokenized list
    local selectedWords = {}
    for i = 1, 3 do
        local randomIndex = math.random(#words)
        table.insert(selectedWords, table.remove(words, randomIndex))
    end
    
    -- Concatenate the selected words into a new sentence
    local newSentence = table.concat(selectedWords, " ")
    
    return newSentence
end

-- Generate and print 10 random three-word sentences
for i = 1, 10 do
    local randomSentence = generateSentence(inputPhrases)
    print(randomSentence)
end

