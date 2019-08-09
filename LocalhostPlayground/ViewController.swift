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
        
        // Webview
        let myURL = URL(string: "https://blanik.me")
        let myRequest = URLRequest(url: myURL!)
        
        // Button
        let button = UIButton.init(type: .roundedRect)
        button.frame = CGRect(x: 178, y: 54, width: 58, height: 30)
        button.setTitle("Reload", for: .normal)
        button.addTarget(self, action: #selector(buttonClicked(sender:)), for: .touchDown)
        
        self.view.addSubview(button)
        webView.load(myRequest)
    }
    
    @objc func buttonClicked(sender: UIButton) {
        webView.reload()
    }
    
}
