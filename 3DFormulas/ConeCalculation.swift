import UIKit
import Darwin
class ConeCalculation: UIViewController {

    @IBOutlet weak var solve: UIButton!
    @IBOutlet weak var home: UIButton!
    @IBOutlet weak var radius: UITextField!
    @IBOutlet weak var height: UITextField!
    @IBOutlet weak var volume: UILabel!
    @IBOutlet weak var surfaceArea: UILabel!
    let π = M_PI
    @IBOutlet weak var lateralSurfaceArea: UILabel!
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
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
    @IBAction func solve(sender: UIButton) {
        let radiusFromUser = Double(radius.text!)
        let heightFromUser = Double(height.text!)
        volumeSolve(radiusFromUser!, h: heightFromUser!)
        surfaceAreaSolve(radiusFromUser!, h: heightFromUser!)
        lateralSurfaceAreaSolve(radiusFromUser!, h: heightFromUser!)
        
    }
    func volumeSolve(r: Double, h: Double){
        let step1 = π * pow(r, 2)
        let step2 = h / 3
        let step3 = step1 * step2
        volume.text = "Volume: \(String(step3))"
    }
    func surfaceAreaSolve(r: Double, h: Double){
        let step1 = π * r
        let h2 = pow(h, 2)
        let r2 = pow(r, 2)
        let step2 = r + sqrt(h2 + r2)
        let step3 = step1 * step2
        surfaceArea.text = "Surface Area: \(String(step3))"
    }
    func lateralSurfaceAreaSolve(r: Double, h: Double){
        let step1 = π * r
        let h2 = pow(h, 2)
        let r2 = pow(r, 2)
        let step2 = step1 * sqrt(h2 + r2)
        lateralSurfaceArea.text = "Lateral Surface Area: \(String(step2))"
    }
}
