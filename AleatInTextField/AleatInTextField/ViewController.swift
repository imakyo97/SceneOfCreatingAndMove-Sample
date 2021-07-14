//
//  ViewController.swift
//  AleatInTextField
//
//  Created by 今村京平 on 2021/07/14.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func showAlert(_ sender: Any) {
        presentAlert()
    }
    
    private func presentAlert() {
        let alert = UIAlertController(title: "タイトル",
                                      message: "メッセージ文",
                                      preferredStyle: .alert)

        // テキストフィールド
        alert.addTextField { (textField) in
            textField.delegate = self
        }

        // OKボタン
        alert.addAction(
            UIAlertAction(title: "OK",
                          style: .default,
                          handler: { (action) -> Void in
                            self.hello(action.title!)
                          })
        )

        // キャンセル
        alert.addAction(
            UIAlertAction(title: "キャンセル",
                          style: .cancel,
                          handler: nil)
        )

        //アラートを表示する
        self.present(alert,
                     animated: true,
                     completion: {
                        // 表示完了後に実行
                        print("アラートが表示された")
                     })
    }

    // 選択で実行するメソッド
    func hello(_ msg: String) {
        print(msg)
    }

    // MARK: - UITableViewDelegate
    func textFieldDidEndEditing(_ textField: UITextField) {
        print(textField.text ?? "")
    }
}

