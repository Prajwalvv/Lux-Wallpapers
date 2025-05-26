//
//  ViewController.swift
//  superior wallpapers
//
//  Created by splash on 07/05/19.
//  Copyright © 2019 splash. All rights reserved.
//

import UIKit
import GlidingCollection
import StoreKit

class ViewController: UIViewController {
//    var photo: CategoryItem? {
//        didSet {
//            loadImages()
//        }
//    }
    private var revealingLoaded = false
    
    override var shouldAutorotate: Bool {
        return revealingLoaded
    }
    @IBOutlet var glidingView: GlidingCollection!
    fileprivate var collectionView: UICollectionView!
    fileprivate var items = ["gold A-Z","dark","abstract","stud","geometric","lux","patch","shade","modern"]
    public var images: [[UIImage?]] = []
    var imageViewType: SaveViewController!
    var celltype: CollectionCell!
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    storeKitHelper.displayStoreKit()
        let revealingSplashView = RevealingSplashView(iconImage: UIImage(named: "startLogo")!,iconInitialSize: CGSize(width: 70, height: 70), backgroundColor: UIColor.black)
        self.view.addSubview(revealingSplashView)
        
        revealingSplashView.duration = 3.0
        
        revealingSplashView.iconColor = UIColor.red
        revealingSplashView.useCustomIconColor = false
        
        revealingSplashView.animationType = SplashAnimationType.swingAndZoomOut
        
        revealingSplashView.startAnimation(){
            self.revealingLoaded = true
            self.setNeedsStatusBarAppearanceUpdate()
            print("Completed")
        }
    }
   
}

// MARK: - Setup
extension ViewController {
    
    func setup() {
        setupGlidingCollectionView()
        loadImages()
    }
    
    private func setupGlidingCollectionView() {
        glidingView.dataSource = self
        
        let nib = UINib(nibName: "CollectionCell", bundle: nil)
        collectionView = glidingView.collectionView
        collectionView.register(nib, forCellWithReuseIdentifier: "Cell")
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = glidingView.backgroundColor
    }
    
   public func loadImages() {
//        if let photoUrlString = photo!.ImageLink{
//            let photoUrl = URL(string: photoUrlString)
//            self.photo.sd_setImage(with: photoUrl)
//        }
        for item in items {
//            let imagesUrl = photo!.ImageLink
//            let filename = photo!.Name
//            let photoUrl = URL(string: imagesUrl!)
//            var firebaseFile = item
//            firebaseFile = filename!
            let imageURLs = FileManager.default.fileUrls(for: "jpeg", fileName: item)
            var images: [UIImage?] = []
            for url in imageURLs {
                guard let data = try? Data(contentsOf: url) else { continue }
                let image = UIImage(data: data)
                images.append(image)
            }
            self.images.append(images)
        }

    }
    func shareImage() {
//        let image = imageView.image
//        let imageShare = [image!]
//        let activityViewController = UIActivityViewController(activityItems: imageShare, applicationActivities: nil)
//        activityViewController.popoverPresentationController?.sourceView = self.view
//        self.present(activityViewController, animated: true, completion: nil)
    }
    
    
}

// MARK: - CollectionView 🎛
extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let section = glidingView.expandedItemIndex
        return images[section].count
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? CollectionCell else { return UICollectionViewCell() }
        let section = glidingView.expandedItemIndex
        let image = images[section][indexPath.row]
        cell.imageView.image = image
        cell.contentView.clipsToBounds = true
        
        let layer = cell.layer
        let config = GlidingConfig.shared
        layer.shadowOffset = config.cardShadowOffset
        layer.shadowColor = config.cardShadowColor.cgColor
        layer.shadowOpacity = config.cardShadowOpacity
        layer.shadowRadius = config.cardShadowRadius
        
        layer.shouldRasterize = true
        layer.rasterizationScale = UIScreen.main.scale
        
        return cell
    }
//********************save image to device********************
    public func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let section = glidingView.expandedItemIndex
        let item = indexPath.item
        let image = images[section][item]
        if section == section{
        }
//        selectIcon.isHidden = true
//        clickLable.isHidden = true
        let imageShare = [image!]
        let activityViewController = UIActivityViewController(activityItems: imageShare, applicationActivities: nil)
        activityViewController.popoverPresentationController?.sourceView = self.view
        self.present(activityViewController, animated: true, completion: nil)
        print("Selected item #\(String(describing: image)) in section #\(section)")
//        self.performSegue(withIdentifier: "savePage", sender: nil)
    }
    
}

// MARK: - Gliding Collection 🎢
extension ViewController: GlidingCollectionDatasource {
    
    func numberOfItems(in collection: GlidingCollection) -> Int {
        return items.count
    }
    
    func glidingCollection(_ collection: GlidingCollection, itemAtIndex index: Int) -> String {
        return "– " + items[index]
    }
    
}
