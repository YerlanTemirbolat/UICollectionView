//
//  ColorCollectionViewCell.swift
//  UICollectionView
//
//  Created by Admin on 4/9/21.
//

import UIKit

class ColorCollectionViewCell: UICollectionViewCell {
    
    private var colorView: UIView = UIView()
    private var hexLabel: UILabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // TODO 3a-i: styiling for collection view cell
        colorView.translatesAutoresizingMaskIntoConstraints = false
        colorView.layer.masksToBounds = true
        colorView.layer.cornerRadius = 8
        contentView.addSubview(colorView)

        hexLabel.translatesAutoresizingMaskIntoConstraints = false
        hexLabel.font = UIFont.systemFont(ofSize: 16)
        hexLabel.textColor = .white
        contentView.addSubview(hexLabel)
        
        constraints()
    }
    
    // TODO 3a-ii: constraints for collection view cell
    func constraints() {
        NSLayoutConstraint.activate([
            colorView.topAnchor.constraint(equalTo: contentView.topAnchor),
            colorView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            colorView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            colorView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
        NSLayoutConstraint.activate([
            hexLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            hexLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ])
    }
    
    func configure(for color: Color) {
        colorView.backgroundColor = color.color
        colorView.layer.opacity = color.selected ? 1 : 0.8
        hexLabel.text = color.hex
        hexLabel.isHidden = !color.selected
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}




