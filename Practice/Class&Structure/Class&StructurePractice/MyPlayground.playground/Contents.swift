//Object Oriented Programming
//Class와 Structure

struct Resolution {
    var width = 5
    var height = 10
    
}

var resoltion1 = Resolution()
resoltion1.height
resoltion1.width

var resolution2 = Resolution()
resolution2.height = 30
resolution2.width = 15

class VideoMpode {
    var resolution = Resolution()
    var frameRate = 0.0
    var name = ""
}

let videoMode = VideoMpode()
videoMode.frameRate
videoMode.name
videoMode.resolution.height

//Value Type VS Reference Type
let hd = Resolution(width: 1920, height: 1080)
var cinema = hd

cinema.width = 2048
hd.width
cinema.width

let tenEighty = VideoMpode()
tenEighty.resolution = hd
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

let anotherTeneighty = tenEighty
anotherTeneighty.frameRate = 30

tenEighty.frameRate
anotherTeneighty.frameRate


var name: String = "Kim"
var reName: String = "Lee"




















