//
//  StoryTableViewCell.swift
//  instargram
//
//  Created by 임소은 on 5/19/24.
//

import UIKit

class StoryTableViewCell: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    
    // 이 함수를 HomeViewController에 가져다 쓸 겁니다.
    func setCollectionViewDataSourceDelegate(dataSoureDelegate: UICollectionViewDelegate & UICollectionViewDataSource, forRow row: Int) {
        collectionView.delegate = dataSoureDelegate
        collectionView.dataSource = dataSoureDelegate
        collectionView.tag = row
        
        let storyNib = UINib(nibName: "StoryCollectionViewCell", bundle: nil)
        collectionView.register(storyNib, forCellWithReuseIdentifier: "StoryCollectionViewCell")
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        collectionView.collectionViewLayout = flowLayout
        
        collectionView.reloadData()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}

