
// get the documents directory url
let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
// choose a name for your image
let fileName = "image.jpg"
// create the destination file url to save your image
let fileURL = documentsDirectory.appendingPathComponent(fileName)
// get your UIImage jpeg data representation and check if the destination file url already exists
if let data = image.jpegData(compressionQuality:  1.0),
    !FileManager.default.fileExists(atPath: fileURL.path) {
    do {
        // writes the image data to disk
        try data.write(to: fileURL)
        print("file saved")
    } catch {
        print("error saving file:", error)
    }
}

