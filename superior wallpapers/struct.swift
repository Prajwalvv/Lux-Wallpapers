//
//  struct.swift
//  superior wallpapers
//
//  Created by splash on 18/05/19.
//  Copyright © 2019 splash. All rights reserved.
//

import Foundation
import StoreKit
struct storeKitHelper {
    static let numbersOfTimesLaunchedKey = "numberOfTimesLaunched"
    static func displayStoreKit(){
        guard let currentVersion = Bundle.main.object(forInfoDictionaryKey: kCFBundleVersionKey as String) as? String else {
            return
        }
        let lastVersionPromptedForReview = UserDefaults.standard.string(forKey: "lastVersion")
        let numberOfTimesLaunched:Int = UserDefaults.standard.integer(forKey: storeKitHelper.numbersOfTimesLaunchedKey)
        if numberOfTimesLaunched > 2 && currentVersion != lastVersionPromptedForReview{
            if #available(iOS 10.3, *){
                SKStoreReviewController.requestReview()
                UserDefaults.standard.set(currentVersion, forKey: "LastVersion")
            }else{
                
            }
        }
    }
    static func incrementNumerOfTimesLaunched(){
        let numberOfTImesLaunched: Int = UserDefaults.standard.integer(forKey: storeKitHelper.numbersOfTimesLaunchedKey) + 1
        UserDefaults.standard.set(numberOfTImesLaunched, forKey: storeKitHelper.numbersOfTimesLaunchedKey)
    }
}
