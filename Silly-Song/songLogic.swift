func generateSong(_ name:String)->String{
	var changedName = name
	changedName.remove(at:changedName.startIndex)
	let song = "\(name), \(name), Bo B\(changedName) \nBanana Fana Fo F\(changedName) \nMe My Mo M\(changedName) \n\(name)"
	return song
}

print(generateSong("Talia"))