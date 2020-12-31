import Foundation

public struct CensoredString {
    public static var censoredOptions: String.CompareOptions = []
    public static var censoredCharacter: Character = "*"
    public static var censoredWords: [String] = []
    
    private static func censor(string: String) -> String {
        var censoredString = string
        
        for word in censoredWords {
            censoredString = censoredString.replacingOccurrences(of: word,
                                                                 with: String(repeating: censoredCharacter,
                                                                              count: word.count),
                                                                 options: censoredOptions)
        }
        
        return censoredString
    }
    
    public var original: String
    public var censored: String
    
    public init(_ value: String) {
        original = value
        censored = CensoredString.censor(string: value)
    }
}
