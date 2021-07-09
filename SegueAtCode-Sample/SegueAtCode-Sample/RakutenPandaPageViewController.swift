//
//  RakutenPandaPageViewController.swift
//  SegueAtCode-Sample
//
//  Created by 今村京平 on 2021/07/09.
//

import UIKit

class RakutenPandaPageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func backToHome(_ sender: Any) {
        // 現在のシーンを閉じて元のシーンに戻る
        self.dismiss(animated: true, completion: nil)
    }
}
