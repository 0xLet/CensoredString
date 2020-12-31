# CensoredString

Quick way to censor occurrences of certain words.

## Example
```swift
CensoredString.censoredOptions = .caseInsensitive
CensoredString.censoredWords = [
    "bacon",
    "pork",
]

let bacon_ipsum = "Bacon ipsum dolor amet chicken doner buffalo capicola, ribeye hamburger t-bone flank sausage pork chop tri-tip. Spare ribs filet mignon tri-tip short loin venison biltong ball tip tongue leberkas. Short ribs shoulder doner tongue sirloin beef ribs biltong tail picanha kevin. Pork jowl porchetta salami tri-tip ribeye. Short loin burgdoggen shank ground round spare ribs jowl shoulder pork belly andouille. Capicola bacon brisket prosciutto. Chicken ham beef ribs, brisket short loin shank t-bone kevin pork loin."


print(CensoredString(bacon_ipsum).censored)
```

### Example Output
```
"***** ipsum dolor amet chicken doner buffalo capicola, ribeye hamburger t-bone flank sausage **** chop tri-tip. Spare ribs filet mignon tri-tip short loin venison biltong ball tip tongue leberkas. Short ribs shoulder doner tongue sirloin beef ribs biltong tail picanha kevin. **** jowl porchetta salami tri-tip ribeye. Short loin burgdoggen shank ground round spare ribs jowl shoulder **** belly andouille. Capicola ***** brisket prosciutto. Chicken ham beef ribs, brisket short loin shank t-bone kevin **** loin."
```
