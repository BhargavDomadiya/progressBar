//
//  ViewController.swift
//  progressBar
//
//  Created by R93 on 26/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var progressView: UIProgressView!
    var timerCount: Double = 10
    var timer: Timer!
    override func viewDidLoad() {
        super.viewDidLoad()
        configerTimerProgressView()
    }
    private func configerTimerProgressView() {
        timer = Timer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
        progressView.setProgress(10, animated: true)
        
        
    }
  @objc
    func updateTime() {
        if timerCount > 0 {
            timerCount = timerCount - 1
            progressView.setProgress(Float(timerCount/10.0), animated: true)
        } else {
            timer.invalidate()
        }
    }
}

