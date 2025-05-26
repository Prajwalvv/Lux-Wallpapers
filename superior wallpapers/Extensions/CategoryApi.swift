//
//  CategoryApi.swift
//  superior wallpapers
//
//  Created by splash on 15/05/19.
//  Copyright © 2019 splash. All rights reserved.
//

//import Foundation
//import FirebaseDatabase
//class CategoryApi {
//    var REF_USERS = Database.database().reference().child("CategoryBackground")
//    func observeUser(withId uid: String, complation: @escaping (CategoryItem) -> Void){
//        REF_USERS.child(uid).observeSingleEvent(of: .value, with: {
//            snapshot in
//            if let dict = snapshot.value as? [String: Any]{
//                let category = CategoryItem.transformUser (dict: dict, key: snapshot.key)
//                complation(category)
//            }
//        })
//}
//}
