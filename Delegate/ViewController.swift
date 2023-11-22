//
//  ViewController.swift
//  Delegate
//
//  Created by Aset Bakirov on 22.11.2023.
//

import UIKit

class ViewController: UIViewController, SelectCategory {
 
  @IBOutlet weak var categoryButton: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }

  @IBAction func openModalView(_ sender: Any) {
    let modalView = storyboard?.instantiateViewController(identifier: "ModalViewController") as! ModalViewController
    
    modalView.modalPresentationStyle = .overCurrentContext
    
    modalView.catergoryArray = ["Food", "Dress", "Electronics", "Other"]
    
    modalView.delegate = self
    
    present(modalView, animated: true, completion: nil)
  }
  
  func setCategory(_ category: String) {
    categoryButton.setTitle(category, for: .normal)
  }
  
  
}

