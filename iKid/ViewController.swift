//
//  ViewController.swift
//  iKid
//
//  Created by 袁月 on 2022/5/1.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

class PunController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func exitWindow(_ sender: Any) {
        self.dismiss(animated: true)
    }
}

class DadController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func exitWindow(_ sender: Any) {
        self.dismiss(animated: true)
    }
}

class KnockController1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

class KnockController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

class KnockController3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

class KnockController4: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    let knock1 = KnockController1.self()
    let knock2 = KnockController2.self()
    let knock3 = KnockController3.self()
    
//    @IBAction func exitWindow(_ sender: Any) {
//        self.dismiss(animated: true)
//        knock3.dismiss(animated: true)
//        knock2.dismiss(animated: true)
//        knock1.dismiss(animated: true)
//    }
}
