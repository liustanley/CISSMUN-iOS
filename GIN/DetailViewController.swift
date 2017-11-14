//
//  DetailViewController.swift
//  CISSMUN
//
//  Created by Tanya Lai on 11/15/17.
//  Copyright © 2017 Stanley Liu. All rights reserved.
//

import Foundation
import UIKit
class DetailViewController: UIViewController {
    
    @IBOutlet weak var detailDescriptionLabel: UILabel!
    @IBOutlet weak var roomImageView: UIImageView!
    
    var detailRoom: Room? {
        didSet {
            configureView()
        }
    }
    
    func configureView() {
        if let detailRoom = detailRoom {
            if let detailDescriptionLabel = detailDescriptionLabel, let roomImageView = roomImageView {
                detailDescriptionLabel.text = detailRoom.roomName
                roomImageView.image = UIImage(named: detailRoom.roomName)
                title = detailRoom.roomName
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}


