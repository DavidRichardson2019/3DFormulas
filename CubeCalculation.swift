import UIKit

class CubeCalculation: UIViewController {

    @IBOutlet weak var solve: UIButton!
    @IBOutlet weak var home: UIButton!
    @IBOutlet weak var s: UITextField!
    @IBOutlet weak var volume: UILabel!
    @IBOutlet weak var surfaceArea: UILabel!
    @IBOutlet weak var circumfrence: UILabel!
    var side = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        
        home.layer.cornerRadius = 5
        home.layer.borderWidth = 1
        home.layer.borderColor = UIColor.blackColor().CGColor
        solve.layer.cornerRadius = 5
        solve.layer.borderWidth = 1
        solve.layer.borderColor = UIColor.blackColor().CGColor

    }
    func hideKeyboardWhenTappedAround() {5
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(CubeCalculation.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
    @IBAction func calculate(sender: UIButton) {
        let side = Double(s.text!)
        volumeSolve(side!)
        surfaceAreaSolve(side!)
        circumfrenceSolve(side!)
    }
    
    func volumeSolve(s: Double){
        let volumeAwnser = pow(s, 3)
        volume.text = "Volume: \(String(volumeAwnser))"
    }
    func surfaceAreaSolve(s: Double){
        let sideSquare = pow(s, 2)
        let surfaceAreaAwnser = 6 * sideSquare
        surfaceArea.text = "Surface Area: \(String(surfaceAreaAwnser))"
    }
    func circumfrenceSolve(s: Double){
        let sideSquare = pow(s, 2)
        let SAawnser = 4 * sideSquare
        circumfrence.text = "Lateral Surface Area: \(String(SAawnser))"
    }

}
