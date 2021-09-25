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
    private var actionButton2: ActionButton!

    @IBAction func cameraButtonTapped(_ sender: Any) {
        print("Camera Tapped")
    }
    @IBAction func photosButtonTapped(_ sender: Any) {
        print("Photos Tapped")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        addActionButton()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            let actionButtonData = ActionButtonData(text: "OK", buttonType: .filled(.smooth)).setActionButtonListener(by: self.actionButtonHandler)
            self.actionButton.setData(by: actionButtonData)
        }
        
        test(completion: testHandler)
        
    }
    
    lazy var testHandler: BooleanCompletionBlock = { value in
        print("value : \(value)")
    }
    
    lazy var actionButtonHandler: VoidCompletionBlock = { 
        print("ACTION BUTTON PRESSED")
    }

    private func addActionButton() {
        actionButton = ActionButton()
        actionButton.translatesAutoresizingMaskIntoConstraints = false
        
        //actionButton.delegate = self
        
        view.addSubview(actionButton)
        
        NSLayoutConstraint.activate([
        
            actionButton.heightAnchor.constraint(equalToConstant: 50),
            actionButton.widthAnchor.constraint(equalToConstant: 120),
            
            actionButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            actionButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        
        ])
        
    }
    
    func test(completion: @escaping (Bool) -> Void) {
        
        print("TEST FIRED")
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            completion(true)
        }
    }

}

//extension ViewController: ActionButtonDelegate {
//    func actionButtonPressed() {
//        //print("Viewcontroller is informed")
//        // istedigin isi yaparsin :D
//        
//    }
//    
//}
