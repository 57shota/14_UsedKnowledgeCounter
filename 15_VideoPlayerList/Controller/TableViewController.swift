//
//  TableViewController.swift
//  15_UsedKnowledgeCounter
//
//  Created by shota ito on 28/11/2018.
//  Copyright © 2018 shota ito. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation


class TableViewController: UITableViewController {
    
    var apps: [App] = App.fetchVideos()
    var player = AVPlayer()
    var playerViewController = AVPlayerViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return apps.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "listCell", for: indexPath) as! TableViewCell
        let app = apps[indexPath.row]
        cell.selectionStyle = UITableViewCell.SelectionStyle.none
        cell.app = app

        return cell
    }
    
    
    // MARK: - TableViewDelegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        playVideo(at: indexPath)
        
    }
    
    func playVideo(at indexPath: IndexPath){
        let selectedVideo = apps[indexPath.row]
        let videoPath = Bundle.main.path(forResource: selectedVideo.videoName, ofType: "mov")
        let videoPathURL = URL(fileURLWithPath: videoPath!)
        player = AVPlayer(url: videoPathURL)
        playerViewController.player = player
        
        self.present(playerViewController, animated: true, completion: {
            self.playerViewController.player?.play()
        })
    }
    

}
