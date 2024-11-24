//
//  ViewController.swift
//  play list with music
//
//  Created by Тахмина on 24/11/2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var  LabelNumberofsong: UILabel!
    
    @IBOutlet weak var LabelNameofsong: UILabel!
    
    @IBOutlet weak var  ImageView: UIImageView!
    var playlist = playlists()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LabelNameofsong.text = playlist.NamesOfPLaylist
        LabelNumberofsong.text =  playlist.NumberOfsongs
        ImageView.image = UIImage(named: playlist.Imagename)
    }
}
