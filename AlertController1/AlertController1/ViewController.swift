//
//  ViewController.swift
//  AlertController1
//
//  Created by 今村京平 on 2021/07/14.
//

import UIKit

class ViewController: UIViewController {

    private var alert: UIAlertController!

    override func viewDidLoad() {
        super.viewDidLoad()
        alert = createAlert()
    }

    @IBAction func showAlert(_ sender: Any) {
        presentAlert()
    }

    private func createAlert() -> UIAlertController {
        // アラートを作る
        let alert = UIAlertController(title: "タイトル",
                                      message:  "メッセージ文",
                                      preferredStyle: .alert)

        // ボタン1
        alert.addAction(
            UIAlertAction(title: "ボタン1です", // アラートにボタンを追加していく
                          style: .default,
                          handler: { (action) -> Void in
                            self.hello(action.title!)
                            // ↑ボタンで実行するメソッドをクロージャーで指定します
                          })
        )

        // ボタン2
        alert.addAction(
            UIAlertAction(title: "ボタン2です",
                          style: .default,
                          handler: { (action) -> Void in
                            self.hello(action.title!)
                          })
        )

        // キャンセル(追加順にかかわらず最後に表示される)
        alert.addAction(
            UIAlertAction(title: "キャンセル",
                          style: .cancel,
                          handler: nil)
        )

        // 赤色のボタン
        alert.addAction(
            UIAlertAction(title: "削除します",
                          style: .destructive,
                          handler: { (action) -> Void in
                            self.hello(action.title!)
                          })
        )
        return alert
    }

    // アラートを表示するメソッド
    private func presentAlert() {
        present(alert,
                animated: true,
                completion: {
                    // 表示完了後に実行
                    print("アラートが表示された")
                })
    }

    // アラートの選択ボタンから実行するメソッド
    private func hello(_ msg: String) {
        print(msg)
    }

}

