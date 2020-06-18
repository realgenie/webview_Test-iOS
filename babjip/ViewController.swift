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
    @IBOutlet var text:UITextField!
    
    
    func loadWebPage(_ url: String) {
        let myUrl = URL(string: url)
        let myRequest = URLRequest(url: myUrl!)
        myWebView.load(myRequest)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let URL1 = "http://localhost:8080/"
        let URL2 = "foodlist/reserve?sto_no=1"
        var totalURL = URL1
        if !URL2.isEmpty {
            var totalURL2 = URL1 + URL2
            loadWebPage(totalURL2)
        }
        loadWebPage(totalURL)
    }
   
    @IBAction func btnStop(_ sender: UIBarButtonItem) {
        myWebView.stopLoading()
    }
    
    @IBAction func btnReload(_ sender: UIBarButtonItem) {
        myWebView.reload()
    }
    
    @IBAction func btnGoBack(_ sender: UIBarButtonItem) {
        myWebView.goBack()
    }
    
    @IBAction func btnGoForward(_ sender: UIBarButtonItem) {
        myWebView.goForward()
    }
    
    
}
