import Foundation 


func shortNameForName(name:String)->String{
	var changedName = name
	changedName.remove(at:changedName.startIndex)
	return changedName
}



func lyricsForName(lyricsTemplate: String, fullName: String) -> String {

    let shortName = shortNameForName(name: fullName)

    let lyrics = lyricsTemplate
        .replacingOccurrences(of: "<FULL_NAME>", with: fullName)
        .replacingOccurrences(of: "<SHORT_NAME>", with: shortName)

    return lyrics
}


var template = "<FULL_NAME>, <FULL_NAME>, Bo B<SHORT_NAME> \nBanana Fana Fo F<SHORT_NAME> \nMe My Mo M<SHORT_NAME> \n<FULL_NAME>"

print(lyricsForName(lyricsTemplate:template, fullName:"Talia"))