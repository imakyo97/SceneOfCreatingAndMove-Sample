//
//  ViewController.swift
//  ActionSheet
//
//  Created by 今村京平 on 2021/07/14.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func showActionSheet(_ sender: Any) {
        presentActionSheet()
    }

    private func presentActionSheet() {
        // アクションシートを作る
        let actionSheet = UIAlertController(title: "タイトル",
                                            message: "メッセージ文",
                                            preferredStyle: .actionSheet)

        // ボタン1
        actionSheet.addAction(
            UIAlertAction(title: "ボタン1です",
                          style: .default,
                          handler: { (action) in
                            self.hello(action.title!)
                          })
        )

        // ボタン2
        actionSheet.addAction(
            UIAlertAction(title: "ボタン2です",
                          style: .default,
                          handler: { (action) in
                            self.hello(action.title!)
                          })
        )

        // キャンセル(追加順に関わらず最後に表示される)
        actionSheet.addAction(
            UIAlertAction(title: "キャンセル",
                          style: .cancel,
                          handler: nil)
        )

        // 赤色ボタン
        actionSheet.addAction(
            UIAlertAction(title: "削除します",
                          style: .destructive,
                          handler: { (action) in
                            self.hello(action.title!)
                          })
        )

        // アクションシートを表示する
        self.present(actionSheet,
                     animated: true,
                     completion: {
                        // 表示完了後に実行
                        print("アクションシートが表示された")
                     })
    }

    // 選んだボタンで実行するメソッド
    func hello(_ msg: String) {
        print(msg)
    }
}

