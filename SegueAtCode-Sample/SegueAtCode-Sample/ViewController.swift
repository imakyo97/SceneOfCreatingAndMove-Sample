//
//  ViewController.swift
//  SegueAtCode-Sample
//
//  Created by 今村京平 on 2021/07/09.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goToRakutenPandaPage(_ sender: Any) {
        // 移動先のビューコントローラを参照する
        let nextVC = self.storyboard?.instantiateViewController(identifier: "RakutenPandaPage")
        // トランジションの映像効果を指定する
        nextVC?.modalTransitionStyle = .flipHorizontal
        // FullScreenに設定
        nextVC?.modalPresentationStyle = .fullScreen
        // シーンを移動する
        present(nextVC!, animated: true, completion: nil)
    }

}

