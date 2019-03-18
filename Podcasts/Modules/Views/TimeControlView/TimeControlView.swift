//
//  TimeControlView.swift
//  Podcasts
//
//  Created by Eugene Karambirov on 18/03/2019.
//  Copyright © 2019 Eugene Karambirov. All rights reserved.
//

import UIKit
import SnapKit

final class TimeControlView: UIView {

    // MARK: - Properties
    fileprivate lazy var currentTimeSlider = UISlider()
    fileprivate lazy var currentTimeLabel  = UILabel()
    fileprivate lazy var durationLabel     = UILabel()
    fileprivate lazy var timeStackView     = UIStackView(arrangedSubviews: [currentTimeLabel, durationLabel])

    // TODO: - Configure init to set labels text and value for slider
    convenience init() {
        self.init()
        setupSlider()
        setupLabels()
        setupLayout()
    }

}

// MARK: - Setup
extension TimeControlView {

    fileprivate func setupLayout() {
        self.addSubview(currentTimeSlider)
        self.addSubview(timeStackView)

        
    }

    fileprivate func setupSlider() {
        currentTimeSlider.value = 0
        currentTimeSlider.snp.makeConstraints { $0.height.equalTo(36) }
    }

    fileprivate func setupLabels() {
        currentTimeLabel.text      = "00:00:00"
        currentTimeLabel.font      = .systemFont(ofSize: 12)
        currentTimeLabel.textColor = .lightGray
        currentTimeLabel.setContentHuggingPriority(UILayoutPriority(rawValue: 250), for: .horizontal)

        durationLabel.text      = "--:--:--"
        durationLabel.font      = .systemFont(ofSize: 12)
        durationLabel.textColor = .lightGray
    }

}
