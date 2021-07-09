//
//  ViewController.swift
//  NavigationControllerAndTableView
//
//  Created by 今村京平 on 2021/07/09.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var webTableView: UITableView!

    // セルに表示するデータ
    let webList = [
        (name: "アップル", url: "https://www.apple.com/jp/"),
        (name: "国立天文台", url: "https://www.nao.ac.jp/"),
        (name: "東京都美術館", url: "http://www.tobikan.jp/"),
        (name: "amazon", url: "https://www.amazon.co.jp/")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        webTableView.dataSource = self
    }

    // セグエで移動する前にデータを渡す
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // セグエがshowWebPageの時の処理
        if segue.identifier == "showWebPage" {
            // タップした行番号を取り出す
            guard let indexPath = webTableView.indexPathForSelectedRow else { return }
            // 行のデータを取り出す
            let webData = webList[indexPath.row]
            // 移動先のビューコントローラのdataプロパティに値を設定する
            (segue.destination as! WebViewController).data = webData
        }
    }

// MARK: - UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        webList.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // テーブルのセルを参照する
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        // テーブルにWebListのデータを表示する
        let webData = webList[indexPath.row]
        cell.textLabel?.text = webData.name // サイト名の表示
        cell.detailTextLabel?.text = webData.url // URLの表示
        return cell
    }
}

