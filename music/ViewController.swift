//
//  ViewController.swift
//  music
//
//  Created by maha on 28/02/2024.
//
import UIKit
import SnapKit

class ViewController: UIViewController {

    private let backgroundImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Unknown")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 10
        return imageView
    }()

    private let blurEffectView: UIVisualEffectView = {
        let blurEffect = UIBlurEffect(style: .systemMaterialDark)
        let blurView = UIVisualEffectView(effect: blurEffect)
        return blurView
    }()

    private let albumCoverImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "song"))
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 10
        return imageView
    }()

    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Until I Found You"
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.textColor = .white
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()

    private let artistLabel: UILabel = {
        let label = UILabel()
        label.text = "Stephen Sanchez"
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        label.textColor = .white
        label.textAlignment = .center
        return label
    }()

    private let progressBar: UISlider = {
        let slider = UISlider()
        slider.minimumTrackTintColor = .green
        slider.maximumTrackTintColor = .gray
        return slider
    }()

    private let currentTimeLabel: UILabel = {
        let label = UILabel()
        label.text = "0:00"
        label.textColor = .white
        label.textAlignment = .left
        return label
    }()

    private let remainingTimeLabel: UILabel = {
        let label = UILabel()
        label.text = "-3:65"
        label.textColor = .white
        label.textAlignment = .right
        return label
    }()

    private let playPauseButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(systemName: "play.fill"), for: .normal)
        button.tintColor = .white
        return button
    }()

    private let previousButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(systemName: "backward.fill"), for: .normal)
        button.tintColor = .white
        return button
    }()

    private let nextButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(systemName: "forward.fill"), for: .normal)
        button.tintColor = .white
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupConstraints()
    }

    private func setupUI() {
        view.addSubview(backgroundImageView)
        backgroundImageView.addSubview(blurEffectView)
        view.addSubview(albumCoverImageView)
        view.addSubview(titleLabel)
        view.addSubview(artistLabel)
        view.addSubview(progressBar)
        view.addSubview(currentTimeLabel)
        view.addSubview(remainingTimeLabel)
        view.addSubview(playPauseButton)
        view.addSubview(previousButton)
        view.addSubview(nextButton)

        playPauseButton.addTarget(self, action: #selector(playPauseButtonTapped), for: .touchUpInside)
        previousButton.addTarget(self, action: #selector(previousButtonTapped), for: .touchUpInside)
        nextButton.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
    }

    private func setupConstraints() {
        backgroundImageView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }

        blurEffectView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }

        albumCoverImageView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.width.equalTo(view.snp.width).multipliedBy(0.7)
            make.height.equalTo(albumCoverImageView.snp.width)
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(99)
        }

        titleLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(100)
        }

        artistLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(titleLabel.snp.bottom).offset(4)
        }

        progressBar.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(16)
            make.top.equalTo(artistLabel.snp.bottom).offset(16)
        }

        currentTimeLabel.snp.makeConstraints { make in
            make.leading.equalTo(progressBar.snp.leading)
            make.top.equalTo(progressBar.snp.bottom).offset(8)
        }

        remainingTimeLabel.snp.makeConstraints { make in
            make.trailing.equalTo(progressBar.snp.trailing)
            make.top.equalTo(progressBar.snp.bottom).offset(8)
        }

        playPauseButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(currentTimeLabel.snp.bottom).offset(16)
        }

        previousButton.snp.makeConstraints { make in
            make.trailing.equalTo(playPauseButton.snp.leading).offset(-32)
            make.centerY.equalTo(playPauseButton.snp.centerY)
        }

        nextButton.snp.makeConstraints { make in
            make.leading.equalTo(playPauseButton.snp.trailing).offset(32)
            make.centerY.equalTo(playPauseButton.snp.centerY)
        }
    }

    @objc private func playPauseButtonTapped() {
       
    }

    @objc private func previousButtonTapped() {
       
    }

    @objc private func nextButtonTapped() {

    }
}
