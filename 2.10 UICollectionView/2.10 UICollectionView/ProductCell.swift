 //
//  ProductCell.swift
//  2.10 UICollectionView
//
//  Created by Vladislav Maslov on 18.05.2023.
//

import UIKit

class ProductCell: UICollectionViewCell {

    @IBOutlet weak var productImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func prepareForReuse() {
        super.prepareForReuse()
        self.productImage.image = nil
    }

    func setupCell(product:Product){
        self.productImage.image = product.image
    }
}
