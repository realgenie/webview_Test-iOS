//
//  ViewController.swift
//  webview_Test
//
//  Created by 나현진 on 2020/05/10.
//  Copyright © 2020 나현진. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet var myWebView: WKWebView!
    
    func loadWebPage(_ url: String) {
        let myUrl = URL(string: url)
        let myRequest = URLRequest(url: myUrl!)
        myWebView.load(myRequest)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        loadWebPage("http://localhost:8090/")
    }


}

