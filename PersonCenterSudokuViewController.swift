//
//  PersonCenterSudokuViewController.swift
//  weicheche
//
//  Created by YANPANPAN on 15/7/17.
//  Copyright (c) 2015年 WeiCheKeJi. All rights reserved.
//

import UIKit

let kLogonAlertTag = 100
class PersonCenterSudokuViewController: UIViewController, UIAlertViewDelegate{
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var _userPhotoView: UIImageView!//头像
    @IBOutlet weak var _userNameLbl: UILabel!//用户名
    @IBOutlet weak var _signatureLbl: UILabel!//签名
    @IBOutlet weak var _qrCodeBtn: UIButton!//二维码按钮
    @IBOutlet weak var _photoBtn: UIButton!//头像按钮
    @IBOutlet weak var _personInfoBtn: UIButton!//用户信息按钮
    @IBOutlet weak var _oilCreditView: UIView!//油站积分视图
    @IBOutlet weak var _weCarCreditView: UIView!//喂车积分视图
    @IBOutlet weak var _oilStationBtn: UIButton!//油站积分按钮
    @IBOutlet weak var _weCarCreditBtn: UIButton!//喂车积分按钮
    @IBOutlet weak var _oilCreditCardSum: UILabel!//积分卡数量
    @IBOutlet weak var _bunSum: UILabel!//喂车馒头数
    @IBOutlet weak var _didiIndicatorImage: UIImageView!//滴滴专车标志
    
    @IBOutlet weak var _headView: UIView!
    @IBOutlet weak var _contentScroll : UIScrollView!
    
    @IBOutlet weak var _scrollContentWidthConst: NSLayoutConstraint!
    
    
    //广告位
    @IBOutlet weak var _bannerImgView: UIImageView!
    @IBOutlet weak var _bannerLeadingConst: NSLayoutConstraint!
    private var _bannerInfo: (link: String, title: String)!
    
    
    private var _bunReturnBlock : (() -> Void)!
    
    
    //测试
    let startTime = CACurrentMediaTime()
    
    // MARK: - Load
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        print("00000---->\(CACurrentMediaTime() - startTime)")
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        print("11111---->\(CACurrentMediaTime() - startTime)")
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        print("22222---->\(CACurrentMediaTime() - startTime)")
        
        super.viewDidLoad()
        print("33333---->\(CACurrentMediaTime() - startTime)")
        
        
    }
    
    deinit {
        NSNotificationCenter.defaultCenter().removeObserver(self)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    // MARK: - Private Method
    
    private func setBannerLink() {
        
        _bannerImgView.userInteractionEnabled = true
        let tap = UITapGestureRecognizer(target: self, action: Selector("lookBanner"))
        _bannerImgView.addGestureRecognizer(tap)
    }
    
    
    class func wc_create() -> PersonCenterSudokuViewController {
        
        let ctr = PersonCenterSudokuViewController(nibName: "PersonCenterSudokuViewController", bundle: nil)
        
        return ctr
    }
    
    var returnBlock:(() -> Void)? {
        get {
            return _bunReturnBlock
        }
        set {
            _bunReturnBlock = newValue
        }
    }
    
    
}
