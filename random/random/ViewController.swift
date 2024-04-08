
//

import UIKit

class ViewController: UIViewController {

    
    let diceimageNameDate = ["one","two","three", "four", "five","six"]
    lazy var diceImageView: UIImageView = {
        let imageview = UIImageView(image:UIImage(named:  "one"))
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
        
    }()
    lazy var changeButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("변경해주세요", for: .normal)
        button.backgroundColor = .purple
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        view.addSubview(diceImageView)
        
        diceImageView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        diceImageView.widthAnchor.constraint(equalToConstant: 300).isActive = true
        diceImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        diceImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        view.addSubview(changeButton)
        changeButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        changeButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        changeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        changeButton.topAnchor.constraint(equalTo: diceImageView.bottomAnchor,constant: 200).isActive = true
        changeButton.addTarget(self, action: #selector(didTapChangeDIceImageButton), for: UIControl.Event.touchUpInside)

    }
   
    @objc func didTapChangeDIceImageButton() {
        diceImageView.image = UIImage(named: diceimageNameDate.randomElement() ?? "one")
    }

}


