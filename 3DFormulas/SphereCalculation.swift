
import UIKit

class SphereCalculation: UIViewController {

    @IBOutlet weak var solve: UIButton!
    @IBOutlet weak var home: UIButton!
    @IBOutlet weak var radius: UITextField!
    @IBOutlet weak var volume: UILabel!
    @IBOutlet weak var surfaceArea: UILabel!
    @IBOutlet weak var circumfrence: UILabel!
    let π = M_PI
    override func viewDidLoad() {
        super.viewDidLoad()
        home.layer.cornerRadius = 5
        home.layer.borderWidth = 1
        home.layer.borderColor = UIColor.blackColor().CGColor
        solve.layer.cornerRadius = 5
        solve.layer.borderWidth = 1
        solve.layer.borderColor = UIColor.blackColor().CGColor
        self.hideKeyboardWhenTappedAround()
        // Do any additional setup after loading the view.
    }
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(SphereCalculation.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }

    @IBAction func solve(sender: UIButton) {
        let r = radius.text
        volumeSolve(Double(r!)!)
        surfaceSolve(Double(r!)!)
        circumSolve(Double(r!)!)
    }
    
      func volumeSolve(r: Double){
        let rQue = pow(r, 3)
        let piRQue = π * rQue
        let volAwn = 4/3 * piRQue
        volume.text = "Volume: \(String(volAwn))"
        
    }
    func surfaceSolve(r: Double){
        let rQue = pow(r, 2)
        let piRQue = π * rQue
        let volAwn = 4 * piRQue
        surfaceArea.text = "Surface Area: \(String(volAwn))"
    }
    func circumSolve(r: Double){
        let d = r * 2
        let circumAwnser = π * d
        circumfrence.text = "Circumfrence: \(String(circumAwnser))"
    }

}
