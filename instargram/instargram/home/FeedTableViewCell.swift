//
//  FeedTableViewCell.swift
//  instargram
//
//  Created by 임소은 on 5/19/24.
//

import UIKit

class FeedTableViewCell: UITableViewCell {
    
    @IBOutlet weak var labelUserName: UILabel!
    @IBOutlet weak var imageViewUserProfile: UIImageView!

    @IBAction func actionIsHeart(_ sender: Any) {
        if buttonHeart.isSelected {
            buttonHeart.isSelected = false
        }else{
            buttonHeart.isSelected = true
            
        }
    }
    @IBAction func actionBookMark(_ sender: Any) {
        if buttonBookMark.isSelected {
            buttonBookMark.isSelected = false}
        else{
            buttonBookMark.isSelected = true
            }
        
    }
    @IBOutlet weak var buttonHeart: UIButton!
    @IBOutlet weak var imageViewFeed: UIImageView!
    @IBOutlet weak var buttonBookMark: UIButton!
    @IBOutlet weak var labelHowMayLike: UILabel!
    @IBOutlet weak var imageViewMyProfile: UIImageView!
    @IBOutlet weak var labelFeed: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        imageViewUserProfile.layer.cornerRadius = 22.5
        imageViewUserProfile.clipsToBounds = true
        imageViewMyProfile.layer.cornerRadius = 22.5
        imageViewMyProfile.clipsToBounds = true
        
        let fontSize = UIFont.boldSystemFont(ofSize: 9)
        let attributedStr = NSMutableAttributedString(string : labelFeed.text ?? "")
        attributedStr.addAttribute(.font, value: fontSize, range: NSRange.init(location: 0, length: 3))
        
        labelFeed.attributedText = attributedStr
    }
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
