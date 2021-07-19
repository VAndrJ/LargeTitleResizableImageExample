//
//  ViewController.swift
//  LargeTitleResizableImage
//
//  Created by VAndrJ on 3/1/18.
//  Copyright © 2018 VAndrJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var userImageView: UIImageView!

    // Force unwrap в данном случае гарантирует, что Вы не забыли UINavigationController
    override func loadView() {
        super.loadView()
        userImageView.translatesAutoresizingMaskIntoConstraints = false
        navigationController!.view.addSubview(userImageView)
        let userImageViewConstraints = [
            userImageView.topAnchor.constraint(equalTo: navigationController!.navigationBar.topAnchor, constant: 4), 
            userImageView.centerXAnchor.constraint(equalTo: navigationController!.view.centerXAnchor), 
            userImageView.bottomAnchor.constraint(equalTo: navigationController!.navigationBar.bottomAnchor, constant: -4), 
            userImageView.heightAnchor.constraint(equalTo: userImageView.widthAnchor)
        ]
        navigationController!.view.addConstraints(userImageViewConstraints)
    }
}

