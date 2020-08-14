
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    
    var container  = [1,2,3]
    
    @IBAction func getImage(_ sender: UIButton) {
//       var firstArg = container[0]
    
        //https://picsum.photos/200
//        URLSession.shared.dataTask(with: URL(string: "https://picsum.photos/200")!) { (data, response, error) in
//           var data =  String(bytes: data!, encoding: .utf8)
//        }
        
        URLSession.shared.downloadTask(with: URL(string: "https://picsum.photos/200")!) { (url, response, error) in
            let data = try! Data(contentsOf: url!)
            let avatar = UIImage(data: data)
            DispatchQueue.main.async {
                self.image.image = avatar
            }
            
        }.resume()
        print("get image")
        
    }
    
}

