//
//  ViewControllerDetails.swift
//  toDoList
//
//  Created by Joker on 22.03.2023.
//

import UIKit

class ViewControllerDetails: UIViewController {
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var textDetail: UITextView!
    var tittle = ""
    var labelD = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelTitle.text = tittle
        textDetail.text = labelD
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
