;------------------------------------------------------------------------------
; Settings
;------------------------------------------------------------------------------

#NoEnv ; For security
#SingleInstance force
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.


; Define lists of emojis and adjectives with actual emoji characters
emojis := ["😊", "👍", "🙌", "🎉", "💡", "🌟", "🚀", "✨", "👏", "🤗", "🥇", "🏆", "🎯", "✨💡", "👏🌟", "🎓📚", "👍💻", "🎈",  "🌸", "🤩", "😄",  "🌞",  "😁", "🎊"]
adjectives := ["Awesome", "Fantastic", "Great", "Excellent", "Wonderful", "Brilliant", "Outstanding", "Yay", "Amazing", "Incredible", "Superb", "Fabulous", "Magnificent", "Nice", "Spectacular", "Awesome work", "Great job", "Well done"]

:*:@@f::
{
    ; Get the length of the emojis and adjectives arrays
    emojiCount := emojis.MaxIndex()
    adjectiveCount := adjectives.MaxIndex()

    ; Randomly select an emoji, an adjective, and a sentence structure
    Random, emojiIndex, 1, %emojiCount%
    Random, adjIndex, 1, %adjectiveCount%
    Random, sentenceIndex, 1, 77
    
    ; Retrieve the randomly selected emoji and adjective
    selectedEmoji := emojis[emojiIndex]
    selectedAdjective := adjectives[adjIndex]

    ; Use the sentence structure depending on the random index
    ; Use sentence structures that work for both single words and phrases
    if (sentenceIndex = 1)
        selectedSentence := "Thank you{!} " selectedAdjective "{!} " selectedEmoji
    else if (sentenceIndex = 2)
        selectedSentence :=  selectedEmoji "Thank you{!} " selectedAdjective "{!} "
    else if (sentenceIndex = 3)
        selectedSentence := "Thank you{!} " selectedEmoji " " selectedAdjective "{!}"
    else if (sentenceIndex = 4)
        selectedSentence := selectedAdjective "{!} Thank you{!} " selectedEmoji
    else if (sentenceIndex = 5)
        selectedSentence := "Thank you{!} " selectedAdjective "{!} " selectedEmoji 
    else if (sentenceIndex = 6)
        selectedSentence := selectedEmoji " Received{!} " selectedAdjective "{!}"
    else if (sentenceIndex = 7)
        selectedSentence := selectedAdjective "{!} Received{!} " selectedEmoji
    else if (sentenceIndex = 8)
        selectedSentence := "Received{!} " selectedEmoji " " selectedAdjective "{!}"
    else if (sentenceIndex = 9)
        selectedSentence := selectedAdjective "{!} " selectedEmoji " Received{!}"
    else if (sentenceIndex = 10)
        selectedSentence := selectedEmoji " " selectedAdjective "{!} Received{!}"
    else if (sentenceIndex = 11)
        selectedSentence := "Received{!} " selectedAdjective "{!} " selectedEmoji
    else if (sentenceIndex = 12)
        selectedSentence := "Thanks for submitting{!} " selectedAdjective "{!} " selectedEmoji
    else if (sentenceIndex = 13)
        selectedSentence := selectedEmoji " Thanks for submitting{!} " selectedAdjective "{!}"
    else if (sentenceIndex = 14)
        selectedSentence := "Thanks for submitting{!} " selectedEmoji " " selectedAdjective "{!}"
    else if (sentenceIndex = 15)
        selectedSentence := selectedAdjective "{!} Thanks for submitting{!} " selectedEmoji
    else if (sentenceIndex = 16)
        selectedSentence := "Thanks for submitting{!} " selectedAdjective "{!} " selectedEmoji
    else if (sentenceIndex = 17)
        selectedSentence := selectedEmoji " Submission received{!} " selectedAdjective "{!}"
    else if (sentenceIndex = 18)
        selectedSentence := selectedAdjective "{!} Submission received{!} " selectedEmoji
    else if (sentenceIndex = 19)
        selectedSentence := "Submission received{!} " selectedEmoji " " selectedAdjective "{!}"
    else if (sentenceIndex = 20)
        selectedSentence := selectedAdjective "{!} " selectedEmoji " Submission received{!}"
    else if (sentenceIndex = 21)
        selectedSentence := selectedEmoji " " selectedAdjective "{!} Submission received{!}"
    else if (sentenceIndex = 22)
        selectedSentence := "Submission received{!} " selectedAdjective "{!} " selectedEmoji
    else if (sentenceIndex = 23)
        selectedSentence := "Got it{!} " selectedAdjective "{!} " selectedEmoji
    else if (sentenceIndex = 24)
        selectedSentence := selectedEmoji " Got it{!} " selectedAdjective "{!}"
    else if (sentenceIndex = 25)
        selectedSentence := selectedAdjective "{!} Got it{!} " selectedEmoji
    else if (sentenceIndex = 26)
        selectedSentence := "Got it{!} " selectedEmoji " " selectedAdjective "{!}"
    else if (sentenceIndex = 27)
        selectedSentence := selectedAdjective "{!} " selectedEmoji " Got it{!}"
    else if (sentenceIndex = 28)
        selectedSentence := selectedEmoji " " selectedAdjective "{!} Got it{!}"
    else if (sentenceIndex = 29)
        selectedSentence := "Yay{!} " selectedAdjective "{!} " selectedEmoji
    else if (sentenceIndex = 30)
        selectedSentence := selectedEmoji " Yay{!} " selectedAdjective "{!}"
    else if (sentenceIndex = 31)
        selectedSentence := selectedAdjective "{!} Yay{!} " selectedEmoji
    else if (sentenceIndex = 32)
        selectedSentence := "Yay{!} " selectedEmoji " " selectedAdjective "{!}"
    else if (sentenceIndex = 33)
        selectedSentence := selectedAdjective "{!} " selectedEmoji " Yay{!}"
    else if (sentenceIndex = 34)
        selectedSentence := selectedEmoji " " selectedAdjective "{!} Yay{!}"
    else if (sentenceIndex = 35)
        selectedSentence := "Yay{!} " selectedAdjective "{!} " selectedEmoji
    else if (sentenceIndex = 36)
        selectedSentence := selectedEmoji " Thanks{!} " selectedAdjective "{!}"
    else if (sentenceIndex = 37)
        selectedSentence := selectedAdjective "{!} " selectedEmoji " Thanks{!}"
    else if (sentenceIndex = 38)
        selectedSentence := "Thanks{!} " selectedEmoji " " selectedAdjective "{!}"
    else if (sentenceIndex = 39)
        selectedSentence := selectedAdjective "{!} " selectedEmoji " Thanks{!}"
    else if (sentenceIndex = 40)
        selectedSentence := selectedEmoji " " selectedAdjective "{!} Thanks{!}"
    else if (sentenceIndex = 41)
        selectedSentence := "Thanks{!} " selectedAdjective "{!} " selectedEmoji
    else if (sentenceIndex = 42)
        selectedSentence := selectedEmoji " " selectedAdjective "{!} Thanks{!}"
    else if (sentenceIndex = 43)
        selectedSentence := selectedAdjective "{!} " selectedEmoji " " selectedEmoji
    else if (sentenceIndex = 44)
        selectedSentence := selectedEmoji " " selectedAdjective "{!} " selectedEmoji
    else if (sentenceIndex = 45)
        selectedSentence := selectedAdjective "{!} " selectedEmoji " " selectedEmoji
    else if (sentenceIndex = 46)
        selectedSentence := selectedEmoji " " selectedAdjective "{!} " selectedEmoji
    else if (sentenceIndex = 47)
        selectedSentence := selectedAdjective "{!} " selectedEmoji " " selectedEmoji
    else if (sentenceIndex = 48)
        selectedSentence := selectedEmoji " " selectedAdjective "{!} " selectedEmoji
    else if (sentenceIndex = 49)
        selectedSentence := selectedAdjective "{!} " selectedEmoji " " selectedEmoji
    else if (sentenceIndex = 50)
        selectedSentence := selectedEmoji " " selectedAdjective "{!} " selectedEmoji
    else if (sentenceIndex = 51)
        selectedSentence := selectedAdjective "{!} " selectedEmoji " " selectedEmoji
    else if (sentenceIndex = 52)
        selectedSentence := selectedEmoji " " selectedAdjective "{!} " selectedEmoji
    else if (sentenceIndex = 53)
        selectedSentence := selectedAdjective "{!} " selectedEmoji " " selectedEmoji
    else if (sentenceIndex = 54)
        selectedSentence := selectedEmoji " " selectedAdjective "{!} " selectedEmoji
    else if (sentenceIndex = 55)
        selectedSentence := selectedAdjective "{!} " selectedEmoji " " selectedEmoji
    else if (sentenceIndex = 56)
        selectedSentence := selectedEmoji " " selectedAdjective "{!}"
    else if (sentenceIndex = 57)
        selectedSentence := selectedEmoji " Your submission is in{!} " selectedAdjective "{!}"
    else if (sentenceIndex = 58)
        selectedSentence := selectedAdjective "{!} Your submission is in{!} " selectedEmoji
    else if (sentenceIndex = 59)
        selectedSentence := selectedEmoji " " selectedAdjective "{!}"
    else if (sentenceIndex = 60)
        selectedSentence := selectedAdjective "{!} " selectedEmoji
    else if (sentenceIndex = 61)
        selectedSentence := selectedEmoji " " selectedAdjective "{!}{!}"
    else if (sentenceIndex = 62)
        selectedSentence :=  selectedAdjective "{!} " selectedEmoji
    else if (sentenceIndex = 63)
        selectedSentence := selectedEmoji " " selectedAdjective "{!}{!}"
    else if (sentenceIndex = 64)
        selectedSentence := selectedAdjective "{!} " selectedEmoji " Thanx{!}"
    else if (sentenceIndex = 65)
        selectedSentence := selectedEmoji " Thanx{!} " selectedAdjective "{!}"
    else if (sentenceIndex = 66)
        selectedSentence := "Thanx{!} " selectedEmoji " " selectedAdjective "{!}"
    else if (sentenceIndex = 67)
        selectedSentence := selectedAdjective "{!} Thanx{!} " selectedEmoji
    else if (sentenceIndex = 68)
        selectedSentence := selectedEmoji " " selectedAdjective "{!} Thanx{!}"
    else if (sentenceIndex = 69)
        selectedSentence := "Thanx{!} " selectedAdjective "{!} " selectedEmoji
    else if (sentenceIndex = 70)
        selectedSentence := selectedEmoji " " selectedAdjective "{!} Thanx{!}"
    else if (sentenceIndex = 71)
        selectedSentence := selectedAdjective "{!} Thanx{!} " selectedEmoji
    else if (sentenceIndex = 72)
        selectedSentence := selectedEmoji " " selectedAdjective "{!} Thanx{!}"
    else if (sentenceIndex = 73)
        selectedSentence := selectedAdjective "{!} " selectedEmoji " Thanx{!}"
    else if (sentenceIndex = 74)
        selectedSentence := selectedEmoji " Thanx{!} " selectedAdjective "{!}"
    else if (sentenceIndex = 75)
        selectedSentence := "Thanx{!} " selectedEmoji " " selectedAdjective "{!}"
    else if (sentenceIndex = 76)
        selectedSentence := selectedAdjective "{!} Thanx{!} " selectedEmoji
    else if (sentenceIndex = 77)
        selectedSentence := selectedEmoji " " selectedAdjective "{!} Thanx{!}"
    ; Output the generated response
    SendInput, %selectedSentence%
}

return
