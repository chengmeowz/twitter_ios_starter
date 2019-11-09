//
//  TweetTableViewCell.swift
//  Twitter
//
//  Created by Cheng Zheng on 11/1/19.
//  Copyright © 2019 Dan. All rights reserved.
//

import UIKit

class TweetTableViewCell: UITableViewCell {

    var favorited:Bool = false
    var tweetId:Int = -1
    var retweeted:Bool = false
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var tweetContent: UILabel!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var retweet: UIButton!
    @IBOutlet weak var favorite: UIButton!
    
    
    @IBAction func favoriteTweet(_ sender: Any) {
        let toBeFavorited = !favorited
        if (toBeFavorited) {
            TwitterAPICaller.client?.favoriteTweet(tweetId: tweetId, success: {
                self.setFavorite(isFavorited: true)
            }, failure: { (error) in
                print("Favorite failed: \(error)")
            })
        } else {
            TwitterAPICaller.client?.unfavoriteTweet(tweetId: tweetId, success: {
                self.setFavorite(isFavorited: false)
            }, failure: { (error) in
                print("Unfavorite failed: \(error)")
            })
        }
    }
    
    func setFavorite(isFavorited:Bool) {
        favorited = isFavorited
        if (favorited) {
            favorite.setImage(UIImage(named: "favor-icon-red"), for: UIControl.State.normal)
        } else {
            favorite.setImage(UIImage(named: "favor-icon"), for: UIControl.State.normal)
        }
    }
    
    @IBAction func reTweet(_ sender: Any) {
        TwitterAPICaller.client?.reTweet(tweetId: tweetId, success: {
            self.setRetweeted(isRetweeted: true)
        }, failure: { (error) in
            print("Retweet failed: \(error)")
        })
    }
    
    func setRetweeted(isRetweeted:Bool) {
        retweeted = isRetweeted
        if (retweeted) {
            retweet.setImage(UIImage(named: "retweet-icon-green"), for: UIControl.State.normal)
        } else {
            retweet.setImage(UIImage(named: "retweet-icon"), for: UIControl.State.normal)
        }
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
