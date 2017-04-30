//
//  ImageCard.swift
//  CardSlider
//
//  Created by Saoud Rizwan on 2/27/17.
//  Copyright © 2017 Saoud Rizwan. All rights reserved.
//

import UIKit

class ImageCard: CardView {
    
    init(frame: CGRect, image: UIImage, name: String, description: String) {
        super.init(frame: frame)
        
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFill
        imageView.backgroundColor = UIColor(red: 67/255, green: 79/255, blue: 182/255, alpha: 1.0)
        imageView.layer.cornerRadius = 5
        imageView.layer.masksToBounds = true
        
        imageView.frame = CGRect(x: 12, y: 12, width: self.frame.width - 24, height: self.frame.height - 103)
        self.addSubview(imageView)
        
        // dummy text boxes
        
        let textBox1 = UIView()
        textBox1.backgroundColor = UIColor(red: 67/255, green: 79/255, blue: 182/255, alpha: 1.0)
        textBox1.layer.cornerRadius = 12
        textBox1.layer.masksToBounds = true
        
        let box1 = CGRect(x: 9, y: imageView.frame.maxY + 15, width: 120, height: 24)
        textBox1.frame = box1
        self.addSubview(textBox1)
        
        
        let textContent1 = UITextView()
        textContent1.text = name
        textContent1.backgroundColor = .white
        textContent1.layer.cornerRadius = 12
        textContent1.layer.masksToBounds = true
        textContent1.frame = box1
        self.addSubview(textContent1)
        
        //
        
        let textBox2 = UIView()
        textBox2.backgroundColor = UIColor(red: 67/255, green: 79/255, blue: 182/255, alpha: 1.0)
        textBox2.layer.cornerRadius = 12
        textBox2.layer.masksToBounds = true
        
        let box2 = CGRect(x: 9, y: textBox1.frame.maxY + 10, width: 290, height: 38)
        textBox2.frame = box2
        self.addSubview(textBox2)
        
        
        let textContent2 = UITextView()
        textContent2.text = description
        textContent2.backgroundColor = .white
        textContent2.layer.cornerRadius = 12
        textContent2.layer.masksToBounds = true
        textContent2.frame = box2
        self.addSubview(textContent2)
        
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let imageView = UIImageView(image: UIImage(named: "dummy_image"))
        imageView.contentMode = .scaleAspectFill
        imageView.backgroundColor = UIColor(red: 67/255, green: 79/255, blue: 182/255, alpha: 1.0)
        imageView.layer.cornerRadius = 5
        imageView.layer.masksToBounds = true
        
        imageView.frame = CGRect(x: 12, y: 12, width: self.frame.width - 24, height: self.frame.height - 103)
        self.addSubview(imageView)
        
        // dummy text boxes
        
        let textBox1 = UIView()
        textBox1.backgroundColor = UIColor(red: 67/255, green: 79/255, blue: 182/255, alpha: 1.0)
        textBox1.layer.cornerRadius = 12
        textBox1.layer.masksToBounds = true
        
        textBox1.frame = CGRect(x: 12, y: imageView.frame.maxY + 15, width: 200, height: 24)
        self.addSubview(textBox1)
        
        let textBox2 = UIView()
        textBox2.backgroundColor = UIColor(red: 67/255, green: 79/255, blue: 182/255, alpha: 1.0)
        textBox2.layer.cornerRadius = 12
        textBox2.layer.masksToBounds = true
        
        
        textBox2.frame = CGRect(x: 12, y: textBox1.frame.maxY + 10, width: 120, height: 24)
        self.addSubview(textBox2)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
