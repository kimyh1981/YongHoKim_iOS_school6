//
//  ViewController.swift
//  DataModeling
//
//  Created by KimYong Ho on 2018. 2. 26..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    @IBOutlet var albumTitleLb: UILabel!
    @IBOutlet var albumArtistLb: UILabel!
    
    var albumData: AlbumModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let albumData = AlbumModel(dic: album) {
            self.albumData = albumData
            albumTitleLb.text = albumData.title
            albumArtistLb.text = albumData.artist
        }
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let data = albumData {
            return data.songList.count
        } else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SongCell", for: indexPath) as! SongCell
        cell.songData = albumData!.songList[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! SongCell
        print(cell.songData?.title)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

