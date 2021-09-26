//
//  ViewController.swift
//  PermissionProject
//
//  Created by Erkut Bas on 25.09.2021.
//

import UIKit

typealias BooleanCompletionBlock = (Bool) -> Void

class ViewController: UIViewController {
    
    private var actionButton: ActionButton!
    private var actionModule: ActionModule!

    @IBAction func cameraButtonTapped(_ sender: Any) {
        print("Camera Tapped")
        present(PermissionViewBuilder.build(with: .camera), animated: true, completion: nil)
    }
    
    @IBAction func photosButtonTapped(_ sender: Any) {
        print("Photos Tapped")
        present(PermissionViewBuilder.build(with: .photos), animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}
