//
//  ViewController.swift
//  MyCustomCollectionView
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
  
  var collectionView:UICollectionView?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    let layout:UICollectionViewFlowLayout = UICollectionViewFlowLayout()
    layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
    layout.itemSize = CGSize(width: 90, height: 120)
    collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
    collectionView!.dataSource = self
    collectionView!.delegate = self
    collectionView!.registerClass(MyCollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
    collectionView!.backgroundColor = UIColor.whiteColor()
    self.view.addSubview(collectionView!)
    
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  //MARK: UICollectionViewDataSource Protocol
  
  //UICollectionViewDataSourceプロトコルは、
  //collectionView:numberOfItemsInSection: メソッドと
  //collectionView:cellForItemAtIndexPath: メソッドを必ず実装しなければならない
  
  //画面に表示するデータの個数を返す
  func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 15
  }
  
  //セルを返す
  func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as MyCollectionViewCell
    cell.textLabel.text = "Text"
    cell.imageView.image = UIImage(named: "star")
    return cell
  }
}

