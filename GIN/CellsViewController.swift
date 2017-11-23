//
//  CellsViewController.swift
//  CISSMUN
//
//  Created by Edward Huang on 5/11/2017.
//  Copyright © 2017 Stanley Liu. All rights reserved.
//

import UIKit

class CellsViewController: UIViewController, UIScrollViewDelegate {


    
    @IBOutlet weak var scroll: UIScrollView!
    @IBOutlet weak var textView: UILabel!
    @IBOutlet weak var textViewtwo: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    var num = 0
   

   
    override func viewDidLoad() {
        super.viewDidLoad()
        textViewtwo.text = roomies[rowNum].floorNumber
        scroll.delegate = self
        imageView.image = UIImage(named: roomies[rowNum].floorMap)
        textView.text = roomies[rowNum].roomName
  
        
        /*imageView.image =  UIImage(named: roomies[row].floorMap)
        scroll.delegate = self
        textView.text = roomies[row].roomName
        textViewtwo.text =  roomies[row].floorNumber
        
        
      
        
       
        
     /*  roomImageView.image =  UIImage(named: roomies[row].floorMap)
        scroll.delegate = self
        textView.text = roomies[row].roomName
        textViewtwo.text =  roomies[row].floorNumber 
        */
       
      /*
        imageView.image = UIImage(named: roomies[row].floorMap)
        scroll.delegate = self
        textView.text = roomies[row].roomName
        textViewtwo.text = roomies[row].floorNumber*/
        //[@"7" intValue];
        // Do any additional setup after loading the view.*/
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
    


}
