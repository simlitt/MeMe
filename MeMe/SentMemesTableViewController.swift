//
//  SentMemesTableViewController.swift
//  MeMe
//
//  Created by Parabsimran Litt on 12/9/15.
//  Copyright © 2015 Parabsimran Litt. All rights reserved.
//

import UIKit

class SentMemesTableViewController: UITableViewController {
    
    var memes: [Meme]! {
        let object = UIApplication.sharedApplication().delegate
        let appDelegate = object as! AppDelegate
        return appDelegate.memes
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("in sent memes")
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        configureTableView()
        self.tableView.reloadData()
        print("sent memes view controller will appear")
    }
    
    func configureTableView(){
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 160.0
    }
    
    //Mark: UITableViewDatasource
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memes.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CustomTableViewCell", forIndexPath: indexPath) as! CustomTableViewCell
        let meme = memes[indexPath.row]
        cell.topTableViewText.text = meme.topText
        cell.bottomTableViewText.text = meme.bottomText
        cell.smallTableViewImage.image = meme.memedImage
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let object: AnyObject = self.storyboard!.instantiateViewControllerWithIdentifier("DetailsViewController")
        let detailsVC = object as! MemeDetailViewController
        detailsVC.passedMeme = memes[indexPath.item]
        
        self.navigationController?.pushViewController(detailsVC, animated: true)
    }
    
}
