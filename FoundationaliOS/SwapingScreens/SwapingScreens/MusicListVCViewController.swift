//
//  MusicListVCViewController.swift
//  SwapingScreens
//
//  Created by Vagner Cazarotto on 2/28/17.
//  Copyright © 2017 Vagner Cazarotto. All rights reserved.
//

import UIKit

class MusicListVCViewController: UIViewController {
    @IBAction func BackBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.blue
    }

    @IBAction func Load3rdScreen(_ sender: Any) {
        let songTitle = "Quit Playing Games With My Heart"
        performSegue(withIdentifier: "SongVC", sender: songTitle )
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as?
            PlaySongViewController {
            if let song = sender as? String {
            
                destination.selectedSong = song
            }
        }
    }
    
}
