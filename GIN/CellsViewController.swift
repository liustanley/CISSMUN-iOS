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
    var pureNumber = 0
    var i = 0  ///rowNum = the row number in the cells array
   
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.text = roomies[numberone].roomName  //cells[rowNum].textLabel!.text! //roomies[rowNum].roomName
        /*
        while i < cells.count {
            if( textView.text == roomies[i].roomName ) { //Title of room == title of room
                pureNumber = i                           //rowInt =
            }
             justfori += 1
        }
    */
        textViewtwo.text = roomies[numberone].floorNumber
        scroll.delegate = self
        imageView.image = UIImage(named: roomies[numberone].floorMap)
        
  
        
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
