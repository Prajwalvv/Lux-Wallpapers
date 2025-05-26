//
//  SubViewController.swift
//  superior wallpapers
//
//  Created by splash on 21/03/20.
//  Copyright © 2020 splash. All rights reserved.
//

import UIKit

class SubViewController: UIViewController {
    @IBOutlet weak var subscribe: UIButton!
    override func viewDidLoad() {
        let sharedSecret = "a96bee61a7814f24b810b1f3e45b2e93"
        enum renewablePurchaseName : String{
        case autoRenewableSub = "group.autoRenewableSub"
        }
        super.viewDidLoad()
        

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
