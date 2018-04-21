//
//  WorkDayDescriptionTableViewCell.swift
//  Scheduling
//
//  Created by macbook on 14.04.2018.
//  Copyright © 2018 Aksiniya. All rights reserved.
//

import UIKit

class WorkDayDescriptionTableViewCell: UITableViewCell {

    @IBOutlet weak var dayDateLabel: UILabel!
    @IBOutlet weak var appointmentsNumberLabel: UILabel!
    @IBOutlet weak var timeToLabel: UILabel!
    @IBOutlet weak var timeFromLabel: UILabel!
    
    let cellHeight = CGFloat(72)
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}