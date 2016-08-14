import UIKit

class CylinderCalculation: UIViewController {

    @IBOutlet weak var solve: UIButton!
    @IBOutlet weak var home: UIButton!
    @IBOutlet weak var radius: UITextField!
    @IBOutlet weak var height: UITextField!
    @IBOutlet weak var volume: UILabel!
    @IBOutlet weak var surfaceArea: UILabel!
    @IBOutlet weak var lateralSurfaceArea: UILabel!
    let π = M_PI
    
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(CylinderCalculation.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        home.layer.cornerRadius = 5
        home.layer.borderWidth = 1
        home.layer.borderColor = UIColor.blackColor().CGColor
        solve.layer.cornerRadius = 5
        solve.layer.borderWidth = 1
        solve.layer.borderColor = UIColor.blackColor().CGColor
        self.hideKeyboardWhenTappedAround()

    }
    @IBAction func solve(sender: UIButton) {
        let radiusFromUser = Double(radius.text!)
        let heightFromUser = Double(height.text!)
        volumeSolve(radiusFromUser!, h: heightFromUser!)
        surfaceAreaSolve(radiusFromUser!, h: heightFromUser!)
        lateralSurfaceArea(radiusFromUser!, h: heightFromUser!)
        
    }
    
    func volumeSolve(r: Double, h: Double){
        let step1 = π * pow(r, 2)
        let step2 = step1 * h
        volume.text = "Volume: \(String(step2))"
    }
    func surfaceAreaSolve(r: Double, h: Double){
        let step1 = π * pow(r, 2)
        let step2 = 2 * step1
        let step3 = 2 * π * r * h
        let stepFinal = step2 + step3
        surfaceArea.text = "Surface Area: \(String(stepFinal))"
    }
    func lateralSurfaceArea(r: Double, h: Double){
        let step1 = π * r * h
        let step2 = 2 * step1
        lateralSurfaceArea.text = "Lateral Surface Area: \(String(step2))"
    }
}
