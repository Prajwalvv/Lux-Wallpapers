//
//  SaveViewController.swift
//  superior wallpapers
//
//  Created by splash on 09/05/19.
//  Copyright © 2019 splash. All rights reserved.
//

import UIKit

class SaveViewController: UIViewController {
    @IBOutlet weak var imageE: UIImageView!
    var image: ViewController?
    @IBAction func save(_ sender: Any) {
        let image = imageE.image
        let imageShare = [image!]
        let activityViewController = UIActivityViewController(activityItems: imageShare, applicationActivities: nil)
        activityViewController.popoverPresentationController?.sourceView = self.view
        self.present(activityViewController, animated: true, completion: nil)
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
//        imageE.image = image?.
    }
    func present(){
        
        
    }
    
}
