//
//  ImageViewController.swift
//  Cassini
//
//  Created by IvanChiang on 2018/5/10.
//  Copyright © 2018 IvanChiang. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    var imageURL: URL? {
        didSet {
            if imageView.image != nil {
                fetchImage()
            }
        }
    }
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if imageView.image == nil {
            fetchImage()
        }
    }
    
    func fetchImage() {
        if let url = imageURL {
            let urlContents = try? Data(contentsOf: url)
            if let imageData = urlContents {
                imageView.image = UIImage(data: imageData)
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        if imageURL == nil {
            imageURL = DemoURLs.stanford
        }
    }
}
