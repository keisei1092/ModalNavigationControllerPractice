//
//  ViewController.swift
//  transitioning-delegate-practice
//
//  Created by SaitoKeisei on 2017/06/08.
//  Copyright © 2017 keisei_1092. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIViewControllerTransitioningDelegate {
	@IBOutlet var interactor: Interactor!

	@IBAction func handleButton(_ sender: UIButton) {
		let sb = UIStoryboard(name: "ModalViewController", bundle: nil)
		let nc = sb.instantiateInitialViewController() as! ModalNavigationController
		nc.interactor = interactor
		nc.transitioningDelegate = self
		present(nc, animated: true, completion: nil)
	}

	func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
		return DismissAnimator()
	}

	func interactionControllerForDismissal(using animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning? {
        return interactor.hasStarted ? interactor : nil
	}
}
