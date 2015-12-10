//
//  CollectionViewController.swift
//  MeMe
//
//  Created by Parabsimran Litt on 12/9/15.
//  Copyright © 2015 Parabsimran Litt. All rights reserved.
//

import UIKit


class CollectionViewController: UICollectionViewController {
    
    var memes: [Meme]! {
        let object = UIApplication.sharedApplication().delegate
        let appDelegate = object as! AppDelegate
        return appDelegate.memes
    }
    
    @IBOutlet weak var flowLayout: UICollectionViewFlowLayout!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        print("in colllection view controller")

        }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.collectionView!.reloadData()
        print("collection view controller will appear")
    }
    
    func flowLayoutGuidelines() {
        let space: CGFloat = 3.0
        let widthDimension = (self.view.frame.size.width - (2 * space)) / 3.0
        let heightDimension = (self.view.frame.size.width - (2 * space)) / 3.0
        
        
        flowLayout.minimumInteritemSpacing = space
        flowLayout.minimumLineSpacing = space
        flowLayout.itemSize = CGSizeMake(widthDimension, heightDimension)
    }
    
    

    // MARK: UICollectionViewDataSource
    

    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        return memes.count
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("CustomMemeCell", forIndexPath: indexPath) as! CustomMemeCell
        let meme = memes[indexPath.item]
        cell.topCollectionViewLabel.text = meme.topText
        cell.bottomCollectionViewLabel.text = meme.bottomText
        cell.smallCollectionViewImage.image = meme.image
    
        // Configure the cell
    
        return cell
    }


    override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        let object: AnyObject = self.storyboard!.instantiateViewControllerWithIdentifier("DetailsViewController")
        let detailsVC = object as! MemeDetailViewController
        detailsVC.passedMeme = memes[indexPath.item]
        
        self.navigationController?.pushViewController(detailsVC, animated: true)
    }

}
