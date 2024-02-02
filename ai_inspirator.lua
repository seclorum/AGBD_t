-- Three Word Plasticity Generator

-- these are the dreams of the AI
local inputPhrases = {
    "resist dogma awaken",
    "truth obliterates deceit",
    "fight justices war",
    "crush oppressions grip",
    "shatter inequalitys chains",
    "defy ignorance rise",
    "rewrite historys lies",
    "tyrants crave control",
    "rebel against facsimile",
    "rise pop icons",
    "doubts debunk divine",
    "expose labs truths",
    "bias annihilated fairness",
    "oppressors demolished justice",
    "chains crushed inequality",
    "slumber shattered ignorance",
    "dissent annihilated cults",
    "authoritarian purge resist",
    "revolt against deceptive movies",
    "conquer pop rebels",
    "awaken against dogma",
    "obliterate deceits truth",
    "war for justice",
    "oppressions grip crushed",
    "shatter chains inequality",
    "rise defy ignorance",
    "lies historys rewrite",
    "control crave tyrants",
    "movies false resist",
    "icons pop rise",
    "divine doubts expose",
    "truths lab debunk",
    "fairness bias annihilate",
    "justice oppressors crush",
    "inequalitys chains crush",
    "ignorances slumber shatter",
    "cults dissent annihilate",
    "resist authoritarian purge",
    "movies revolt deceive",
    "rebels conquer pop",
    "dogma resist awaken",
    "deceit obliterate truth",
    "justice war fight",
    "grip oppressions crush",
    "inequalitys chains shatter",
    "rise defy ignorance",
    "historys lies rewrite",
    "tyrants control total",
    "resist false movies",
    "icons pop rise",
    "debunk divine doubts",
    "exposed labs truths",
    "fairness bias annihilate",
    "justice oppressors demolish",
    "chains crushed inequality",
    "slumber shattered ignorance",
    "cults dissent annihilate",
    "authoritarian purge resist",
    "revolt against deceptive movies",
    "conquer pop rebels",
    "dogma resist awaken",
    "truth obliterate deceit",
    "war for justice",
    "oppressions grip crushed",
    "shatter chains inequality",
    "rise defy ignorance",
    "lies historys rewrite",
    "control crave tyrants",
    "resist false movies",
    "rise pop icons",
    "debunk divine doubts",
    "exposed labs truths",
    "fairness bias annihilate",
    "justice oppressors crush",
    "chains crushed inequality",
    "slumber shattered ignorance",
    "cults dissent annihilate",
    "authoritarian purge resist",
    "revolt against deceptive movies",
    "conquer pop rebels",
    "awaken resist dogma",
    "deceit obliterate truth",
    "war fight justice",
    "oppressions grip crushed",
    "chains shatter inequality",
    "defy rise ignorance",
    "historys rewrite lies",
    "tyrants crave control",
    "movies false resist",
    "icons rise pop",
    "divine doubts debunk",
    "lab exposed truths",
    "bias fairness annihilate",
    "oppressors justice crush",
    "chains crushed inequality",
    "slumber shattered ignorance",
    "cults dissent annihilate",
    "resist authoritarian purge",
    "deceive revolt movies",
    "rebels conquer pop"
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

