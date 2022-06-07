//
//  PhotoViewController.swift
//  PhotoTapps
//
//  Created by Константин Алехин on 08.06.2022.
//

import UIKit

class PhotoViewController: UIViewController {

    var image: UIImage?

    @IBOutlet weak var photoImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        photoImageView.image = image

        // Do any additional setup after loading the view.
    }
    
    @IBAction func shareAction(_ sender: Any) {

        let shareController = UIActivityViewController(activityItems: [image!], applicationActivities: nil)

        shareController.completionWithItemsHandler = { _, bool, _, _ in
            if bool {
                print("Успешно!")
            }
        }

        present(shareController, animated: true, completion: nil)
    }
    
}
