import UIKit

protocol CheckViewControllerDelegate: AnyObject {
    func setLabelText(_ text: String)
}
class ViewController: UIViewController{
    
    
    var isButtonFilled = false // 버튼이 채워져 있는지 여부를 추적하는 변수
    var isButton2Filled = false
    var isToppingButtonFilled = false // 탑핑 버튼이 채워져 있는지 여부를 추적하는 변수
    
    @IBOutlet weak var toppingButton: UIButton!
    @IBOutlet weak var buttonSizePick: UIButton!
    @IBOutlet weak var button2: UIButton!
    
    let checkVC = CheckViewController()
    
    
    @IBAction func navigationCartbutton(_ sender: Any) {
        guard let nextVC = storyboard?.instantiateViewController(withIdentifier: "CheckViewController") as? CheckViewController else {return}
        nextVC.modalPresentationStyle = .fullScreen
        present(nextVC, animated: true, completion: nil)
    }
    @IBAction func cartbutton(_ sender: Any) {
        guard let nextVC = storyboard?.instantiateViewController(withIdentifier: "CheckViewController") as? CheckViewController else {return}
        nextVC.modalPresentationStyle = .fullScreen
        present(nextVC, animated: true, completion: nil)
    }
    var delegate : CheckViewControllerDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 버튼에 텍스트 추가
        buttonSizePick.setTitle(" M 사이즈", for: .normal)
        button2.setTitle(" L 사이즈", for: .normal)
        
        // 첫 번째 버튼에 탭 제스처 추가
        let tapGesture1 = UITapGestureRecognizer(target: self, action: #selector(buttonTapped))
        buttonSizePick.addGestureRecognizer(tapGesture1)
        
        // 두 번째 버튼에 탭 제스처 추가
        let tapGesture2 = UITapGestureRecognizer(target: self, action: #selector(button2Tapped))
        button2.addGestureRecognizer(tapGesture2)
        
        // 탑핑 버튼에 탭 제스처 추가
        let toppingTapGesture = UITapGestureRecognizer(target: self, action: #selector(toppingButtonTapped))
        toppingButton.addGestureRecognizer(toppingTapGesture)
        
        checkVC.delegate = self
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        // 버튼이 채워져 있는지 여부를 토글합니다.
        isButtonFilled.toggle()
        
        // 버튼의 모양을 업데이트합니다.
        updateButtonAppearance()
        
        if isButtonFilled {
            checkVC.delegate?.setLabelText("사이즈: M")
        }
    }
    
    @objc func button2Tapped() {
        // 두 번째 버튼이 채워져 있는지 여부를 토글합니다.
        isButton2Filled.toggle()
        
        // 버튼의 모양을 업데이트합니다.
        updateButtonAppearance()
        
        if isButton2Filled {
            checkVC.delegate?.setLabelText("사이즈: L")
        }
    }
    
    @IBAction func toppingButtonTapped(_ sender: UIButton) {
        // 탑핑 버튼이 채워져 있는지 여부를 토글합니다.
        isToppingButtonFilled.toggle()
        
        // 버튼의 모양을 업데이트합니다.
        updateToppingButtonAppearance()
        if isToppingButtonFilled {
            checkVC.labelTopping?.text = "옥수수(30g)추가"
        }
    }
    
    func updateButtonAppearance() {
        // 버튼1의 이미지 업데이트
        if isButtonFilled {
            buttonSizePick.setImage(UIImage(systemName: "circle.fill"), for: .normal)
        } else {
            buttonSizePick.setImage(UIImage(systemName: "circle"), for: .normal)
        }
        
        // 버튼2의 이미지 업데이트
        if isButton2Filled {
            button2.setImage(UIImage(systemName: "circle.fill"), for: .normal)
        } else {
            button2.setImage(UIImage(systemName: "circle"), for: .normal)
        }
    }
    
    func updateToppingButtonAppearance() {
        // 탑핑 버튼의 이미지 업데이트
        if isToppingButtonFilled {
            toppingButton.setImage(UIImage(systemName: "square.fill"), for: .normal)
        } else {
            toppingButton.setImage(UIImage(systemName: "square"), for: .normal)
        }
    }
    func presentCartViewController() {
            guard let nextVC = storyboard?.instantiateViewController(withIdentifier: "CheckViewController") as? CheckViewController else { return }
            nextVC.modalPresentationStyle = .fullScreen
            present(nextVC, animated: true, completion: nil)
            
            // Delegate 설정
            checkVC.delegate = self
        }

}
extension ViewController: CheckViewControllerDelegate {
    func setLabelText(_ text: String) {
    }
}
