//
//  ViewController.swift
//  NGSmokeOverlay
//
//  Created by Nitin Gohel on 15/06/16.
//  Copyright © 2016 Nitin Gohel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgview: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgview.clipsToBounds = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func addimage(sender: UIButton) {
        
        let overlayImage: UIImage = UIImage(named: "smakeoverlya.png")!
        let overlayImageView: UIImageView = UIImageView(image: overlayImage)
        self.imgview.addSubview(overlayImageView)

    }
    @IBAction func save(sender: UIButton) {
        
        
        UIGraphicsBeginImageContext(self.imgview.frame.size);
        let context = UIGraphicsGetCurrentContext();
        self.imgview.layer.renderInContext(context!)
       
        let result: UIImage = UIGraphicsGetImageFromCurrentImageContext()
        
        
       
        UIGraphicsEndImageContext()
        
        UIImageWriteToSavedPhotosAlbum(result, nil, nil, nil)
        
        
      
//        
//        UIGraphicsBeginImageContext(CGSizeMake(320,480));
//        CGContextRef.self context = UIGraphicsGetCurrentContext();
//        [myUIView.layer renderInContext:context];
//        UIImage *screenShot = UIGraphicsGetImageFromCurrentImageContext();
//        UIGraphicsEndImageContext();

    }
}

