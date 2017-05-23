//
//  CustomCell.swift
//  MailExample
//
//  Created by Steve on 2017/5/23.
//
//

import UIKit

class CustomCell: UITableViewCell {
    var titleLabel: UILabel!

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        titleLabel = UILabel()
        contentView.addSubview(titleLabel)
        setEditingImage(image: UIImage(named: "Trash-circle")!)
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        titleLabel.frame = contentView.bounds
    }

    override func setHighlighted(_: Bool, animated _: Bool) {}

    override func setEditing(_ editing: Bool, animated: Bool) {
        super.setEditing(editing, animated: animated)
        setEditingImage(image: UIImage(named: "Trash-circle")!)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        if selected {
            setEditingImage(image: UIImage(named: "Read-circle")!)
        } else {
            setEditingImage(image: UIImage(named: "Trash-circle")!)
        }
    }

    func setEditingImage(image: UIImage) {
        (subviews
            .filter({ String(describing: $0).contains("UITableViewCellEditControl") }).first?.subviews
            .filter({ String(describing: $0).contains("UIImageView") }).first as? UIImageView)?.image = image
    }

    required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    deinit {}
}
