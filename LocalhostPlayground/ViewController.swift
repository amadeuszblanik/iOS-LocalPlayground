//
//  ViewController.swift
//  LocalhostPlayground
//
//  Created by Amadeusz Blanik on 09/08/2019.
//  Copyright © 2019 Amadeusz Blanik. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!

    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string: "https://blanik.me")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
}
