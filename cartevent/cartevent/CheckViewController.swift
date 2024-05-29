import UIKit



class CheckViewController: UIViewController {
    weak var delegate: CheckViewControllerDelegate?
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var labelTopping: UILabel?
    
    @IBAction func backbutton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func setLabelText(_ text: String) {
        labelTopping?.text = text
    }
}

