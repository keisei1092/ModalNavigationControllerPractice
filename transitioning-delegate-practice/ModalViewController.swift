//
//  ModalViewController.swift
//  transitioning-delegate-practice
//
//  Created by SaitoKeisei on 2017/06/08.
//  Copyright © 2017 keisei_1092. All rights reserved.
//

import UIKit

class ModalViewController: UIViewController {
	@IBAction func handleDismissButton(_ sender: UIBarButtonItem) {
		dismiss(animated: true, completion: nil)
	}

	@IBAction func handleGesture(_ sender: UIPanGestureRecognizer) {
		weak var nc = navigationController as? ModalNavigationController
		nc?.handleGesture(sender)
	}
}
