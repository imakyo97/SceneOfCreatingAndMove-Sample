//
//  WebViewController.swift
//  NavigationControllerAndTableView
//
//  Created by 今村京平 on 2021/07/09.
//

import UIKit
import WebKit

class WebViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    // シーン移動の際に設定されるWebデータ
    var data: (name: String, url: String)?

    override func viewDidLoad() {
        super.viewDidLoad()
        guard let webData = data else { return }
        // 表示するWebページのURLRepuestを作る
        let myURL = URL(string: webData.url)
        let myRequest = URLRequest(url: myURL!)
        // Webを読み込む
        webView.load(myRequest) // Webページが表示される
    }
}
