//
//  ViewController.swift
//  ios-uikit-label-demo
//
//  Created by 本山功 on 2017/02/07.
//  Copyright © 2017年 k_moto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var hiraginoLabel: UILabel!
    @IBOutlet weak var hiraginoLabelHeight: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupText(text: "A view that displays one or more lines of read-only text, often used in conjunction with controls to describe their intended purpose.")
        setupLineBreakMode()
        
        configureLabelHeight()
    }

    //　ラベルに表示するテキストを設定する
    private func setupText(text :String) {
        label.text = text
    }

    // ラベルのテキストのフォントを設定する
    private func setupFont() {
        label.font = UIFont.italicSystemFont(ofSize: UIFont.labelFontSize)
    }
    
    // テキストの色を設定する
    private func setupTextColor() {
        label.textColor = .blue
    }
    
    // テキストの影の色を設定する
    private func setupShadowColor() {
        label.shadowColor = .gray
    }
    
    // テキストの影の位置を設定する
    private func setupShadowOffset() {
        label.shadowOffset = CGSize(width:6,height:6)
    }
    
    // テキストの水平方向の配置を設定する
    private func setupTextAlignment() {
        label.textAlignment = .center
    }
    
    // テキストの折り返しや切り捨てる方法を設定する
    private func setupLineBreakMode() {
        
        /* IBのAttributes Inspectorでも設定可能 */
        
        // NSLineBreakMode.byTruncatingHead 先頭が...になる
//        label.lineBreakMode = .byTruncatingHead
        
        // .byTruncatingMiddle 中間が...になる
//        label.lineBreakMode = .byTruncatingMiddle
        
        // .byTruncatingTail 末尾が...になる
        label.lineBreakMode = .byTruncatingTail
        
        // .byClipping テキストコンテナの端まで表示する (文字が切れる場合もある)
//        label.lineBreakMode = .byClipping
        
        /* 以下、複数行許容時のみ */
        
        // .byCharWrapping 複数行になる時、文字単位で折り返す
//        label.lineBreakMode = .byCharWrapping
        
        // .byWordWrapping 複数行になる時、単語単位で折り返す
//        label.lineBreakMode = .byWordWrapping
    }
    
    // ラベルに表示するスタイル付きテキストを設定する
    private func setupAttributedText(text :String) {
        let attributeText = NSMutableAttributedString(string: text)
        attributeText.addAttributes([NSForegroundColorAttributeName: UIColor.blue], range: NSMakeRange(0, 2))
        label.attributedText = attributeText
    }
    
    // テキストのハイライトカラーを設定する
    private func setupHighlightedTextColor() {
        label.highlightedTextColor = UIColor.red
    }
    
    // ハイライトカラーで表示するかを設定する
    private func setupIsHighlighted() {
        label.isHighlighted = true
    }
    
    // ユーザイベントの有効化/無効化を設定する
    private func setupIsUserInteractionEnabled() {
        label.isUserInteractionEnabled = true
    }
    
    // ラベルの表示の有効/無効を設定する
    private func setupIsEnabled() {
        label.isEnabled = true
    }
    
    // ラベルに表示する行数を指定する
    private func setupNumberOfLines() {
        label.numberOfLines = 0
    }
    
    // テキストの表示をラベルに合わせるかどうかを設定する
    private func setupAdjustsFontSizeToFitWidth() {
        label.adjustsFontSizeToFitWidth = false
    }
    
    // テキストを表示するベースラインを設定する
    private func setupBaselineAdjustment() {
        label.baselineAdjustment = UIBaselineAdjustment.alignCenters
    }
    
    // テキストの最小フォントサイズ
    private func setupMinimumScaleFactor() {
        label.minimumScaleFactor = 1.0
    }
    
    // テキストを切り捨てる前に文字の間隔を自動的に詰める
    private func setupAllowsDefaultTighteningForTruncation() {
        label.allowsDefaultTighteningForTruncation = true
    }
    
    // ラベルに複数行表示されている場合の最大幅を設定する
    private func setupPreferredMaxLayoutWidth() {
        label.preferredMaxLayoutWidth = label.bounds.width
    }
    
    // ラベルに設定されたCGRectを戻す
    private func setupTextRect() {
        let textBounds = CGRect(x:0.0, y:100.0, width:200.0, height:200.0)
        let textrect = label.textRect(forBounds: textBounds, limitedToNumberOfLines: 1)
        print(textrect)
    }
    
    // ラベルを表示する位置を指定する
    private func setupDrawText() {
        let textCgrect = CGRect(x:0.0, y:100.0, width:50.0, height:100.0)
        label.drawText(in: textCgrect)
    }
    
    private func configureLabelHeight() {
        
        /**
         Labelの高さの制約をを十分に設定すると、ヒラギノフォントの文字切れを解消できる
         hiraginoLabel.frame.size.height = 30では解消しないので注意
         */
        hiraginoLabelHeight.constant = 30
    }
}

