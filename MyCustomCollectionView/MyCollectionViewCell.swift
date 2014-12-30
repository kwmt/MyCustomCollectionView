//
//  MyCollectionViewCell.swift
//  MyCustomCollectionView
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {

  let textLabel: UILabel!
  let imageView: UIImageView!
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height*2/3))
    imageView.contentMode = UIViewContentMode.ScaleAspectFit
    contentView.addSubview(imageView)
    
    let textFrame = CGRect(x: 0, y: imageView.frame.size.height, width: frame.size.width, height: frame.size.height/3)
    textLabel = UILabel(frame: textFrame)
    textLabel.font = UIFont.systemFontOfSize(UIFont.smallSystemFontSize())
    textLabel.textAlignment = .Center
    contentView.addSubview(textLabel)
  }
  
  required init(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }
}
