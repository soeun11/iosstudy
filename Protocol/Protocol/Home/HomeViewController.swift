import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    let floatingIcon = UIButton(type: .custom) // 플로팅 아이콘 버튼

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupFloatingIcon() // 플로팅 아이콘 버튼 설정
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let feedNib = UINib(nibName: "FeddTableViewCell", bundle: nil)
        tableView.register(feedNib, forCellReuseIdentifier: "FeddTableViewCell")
    }
    
    
    // 플로팅 아이콘 버튼 설정
    func setupFloatingIcon() {
        let iconWidth: CGFloat = 100    // 아이콘의 가로 크기를 조정
        let iconHeight: CGFloat = 50
        floatingIcon.frame = CGRect(x: view.frame.width - iconWidth - 20, y: view.frame.height - iconHeight - 100, width: iconWidth, height: iconHeight)
        floatingIcon.backgroundColor = UIColor.orange
        floatingIcon.setTitle("+글쓰기", for: .normal)
        floatingIcon.layer.cornerRadius = 20 // 라운딩 넣기
        floatingIcon.setImage(UIImage(named: "your_icon_image"), for: .normal)
        floatingIcon.addTarget(self, action: #selector(floatingIconTapped), for: .touchUpInside)
        
        view.addSubview(floatingIcon)
        view.bringSubviewToFront(floatingIcon) // 플로팅 아이콘을 UITableView 위로 가져옴
    }
    
    // 플로팅 아이콘 버튼이 눌렸을 때의 동작
    @objc func floatingIconTapped() {
        // 버튼이 눌렸을 때의 동작을 구현
        print("플로팅 아이콘 버튼이 눌렸습니다.")
    }
    
}

// UITableView의 Delegate 및 DataSource 구현
extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // 표시할 셀의 개수를 반환
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FeddTableViewCell", for: indexPath) as? FeddTableViewCell else {
            fatalError("Failed to dequeue a cell.")
        }
        
        
        
        // indexPath.row에 따라 다른 내용을 설정
        switch indexPath.row {
        case 0:
            cell.sellingName.text = "첫 번째 셀의 이름"
        case 1:
            cell.sellingName.text = "두 번째 셀의 이름"
        // 필요한 만큼 추가할 수 있습니다.
        default:
            cell.sellingName.text = "기본 셀의 이름"
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
}

