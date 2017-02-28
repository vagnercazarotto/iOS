//
//  PlaySongViewController.swift
//  SwapingScreens
//
//  Created by Vagner Cazarotto on 2/28/17.
//  Copyright © 2017 Vagner Cazarotto. All rights reserved.
//

import UIKit

class PlaySongViewController: UIViewController {
    
    private var _selectedSong:String!
    
    var selectedSong: String {
        get{
            return _selectedSong
        } set {
            _selectedSong = newValue
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        songTeXT.text = _selectedSong
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var songTeXT: UILabel!
    
}
