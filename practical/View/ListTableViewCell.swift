//
//  ListTableViewCell.swift
//  practical
//
//  Created by Nandan on 21/02/24.
//

import UIKit

protocol ListTableViewCellDelegate {
    func updateUI(listTotWithQuantity: Int, addOrRemove: String, listId: String, quantity: Int)
}

class ListTableViewCell: UITableViewCell {

    @IBOutlet weak var listImgView: UIImageView!
    @IBOutlet weak var listNameLbl: UILabel!
    @IBOutlet weak var listPriceLbl: UILabel!
    @IBOutlet weak var listQuantityLbl: UILabel!
    @IBOutlet weak var listCounterStackView: UIStackView!
    
    let radioSelected = UIImage(named: "radioSelected")
    let radioNotSelected = UIImage(named: "radioNotSelected")
    let checkbox = UIImage(named: "checkbox")
    let unchecked = UIImage(named: "unchecked")
    var listQuantity = 1
    var listItemPrice = 0
    var delegate: ListTableViewCellDelegate?
    var currentList: List?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.selectionStyle = .none
        
        listCounterStackView.layer.cornerRadius = 8
        listCounterStackView.layer.borderColor = UIColor.systemBlue.cgColor
        listCounterStackView.layer.borderWidth = 1
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setData(sec: Int, list: List, type: Int, checked: Bool) {
        if type == 1 {
            listImgView.image = list.isDefaultSelected ? radioSelected : radioNotSelected
            listCounterStackView.isHidden = true
        } else {
            listImgView.image = checked ? checkbox : unchecked
            
            listItemPrice = list.price
            currentList = list
        }
        
        listNameLbl.text = list.name[0]
        
        if list.price == 0 {
            listPriceLbl.text = ""
            listPriceLbl.isHidden = true
        } else {
            listPriceLbl.text = "₹ \(list.price)"
            listPriceLbl.isHidden = false
        }
    }
    
    @IBAction func listMinusBtnPressed(_ sender: UIButton) {
        if listQuantity > 1 {
            listQuantity -= 1
            listQuantityLbl.text = String(listQuantity)
            let totalWithQuantity = listItemPrice * listQuantity
            delegate?.updateUI(listTotWithQuantity: totalWithQuantity, addOrRemove: "remove", listId: currentList?.id ?? "", quantity: listQuantity)
        }
    }
    
    @IBAction func listPlusBtnPressed(_ sender: UIButton) {
        listQuantity += 1
        listQuantityLbl.text = String(listQuantity)
        let totalWithQuantity = listItemPrice * (listQuantity - 1)
        delegate?.updateUI(listTotWithQuantity: totalWithQuantity, addOrRemove: "add", listId: currentList?.id ?? "", quantity: listQuantity)
    }
    
    
}
