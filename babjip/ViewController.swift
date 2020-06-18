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
    @IBOutlet var sto_no: String!
    @IBOutlet var num: String!
    
    
    func loadWebPage(_ url: String) {
        let myUrl = URL(string: url)
        let myRequest = URLRequest(url: myUrl!)
        myWebView.load(myRequest)
        
    }    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        let URL1 = "http://localhost:8080/"
        let URL2 = "foodlist/reserve?sto_no="
        let URL3 = sto_no
        if let sto = URL3{
            let total1URL = URL1 + URL2 + sto
            loadWebPage(total1URL)
        }else{
            loadWebPage(URL1)
            
        }
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
