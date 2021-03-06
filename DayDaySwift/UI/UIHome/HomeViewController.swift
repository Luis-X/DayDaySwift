//
//  HomeViewController.swift
//  DayDaySwift
//
//  Created by LuisX on 16/3/29.
//  Copyright © 2016年 apple. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var allHomeTableViewArr = [
        ["基础":"UI"],
        ["弹框":"UIAlertViewController"],
        ["选择框":"UIPickerView"],
        ["微调器":"UIStepper"],
        ["滚动视图":"UIScrollView"],
        ["加速度传感器":"CoreMotion"],
        ["手势":"UIGestureRecognizer"],
        ["日期选择器":"UIDatePicker"],
        ["网页":"UIWebView"],
        ["工具栏":"UIToolBar"],
        ["列表":"UITableView"],
        ["自定义列表":"UITableView"],
        ["编辑列表":"UITableView"],
        ["搜索栏":"UISearchBar"],
        ["网格":"UICollectionView"]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = UIColor.white
        self.navigationItem.title = "UI"
        self.navigationController?.navigationBar.isTranslucent = false
        
        self.createSubViews()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

//初始化视图
    func createSubViews(){
        let homeTable = UITableView.init(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height - 64), style: .plain)
        homeTable.backgroundColor = UIColor.white
        homeTable.delegate = self
        homeTable.dataSource = self
        self.view.addSubview(homeTable)
        homeTable.register(HomeTableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    
    

//MARK:-UITableViewDataSource
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! HomeTableViewCell
        let menuDic = allHomeTableViewArr[indexPath.row]
        cell.textLabel?.text = menuDic.keys.first
        cell.detailTextLabel?.text = menuDic.values.first
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allHomeTableViewArr.count
    }
//MARK:-UITableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if (indexPath.row) == 0 {
            let swiftBaseVC = ViewController()
            swiftBaseVC.hidesBottomBarWhenPushed = true;
            self.navigationController?.pushViewController(swiftBaseVC, animated: true)
        }
        
        if (indexPath.row) == 1 {
            let learnViewVC = AlertVCViewController()
            learnViewVC.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(learnViewVC, animated: true)
        }
        
        if (indexPath.row) == 2 {
            let pickerViewVC = PickerViewViewController()
            pickerViewVC.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(pickerViewVC, animated: true)
        }
        
        if (indexPath.row) == 3 {
            let stepperVC = StepperViewController()
            stepperVC.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(stepperVC, animated: true)
        }
        
        if (indexPath.row) == 4 {
            let scrollViewVC = ScrollViewViewController()
            scrollViewVC.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(scrollViewVC, animated: true)
        }
        
        if (indexPath.row) == 5 {
            print("加速度传感器")
        }
        
        if (indexPath.row) == 6 {
            let gestureRecognizerVC = GestureRecognizerViewController()
            gestureRecognizerVC.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(gestureRecognizerVC, animated: true)
        }
        
        if (indexPath.row) == 7 {
            let datePickerVC = DatePickerViewController()
            datePickerVC.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(datePickerVC, animated: true)
        }
        
        if (indexPath.row) == 8 {
            let webVC = WebViewViewController()
            webVC.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(webVC, animated: true)
        }
        
        if (indexPath.row) == 9 {
            let toolBarVC = UIToolBarViewController()
            toolBarVC.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(toolBarVC, animated: true)
        }
        
        if (indexPath.row) == 10 {
            let tableViewVC = TableViewViewController()
            tableViewVC.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(tableViewVC, animated: true)
        }
        
        if (indexPath.row == 11) {
            let customTableViewVC = CustomTableViewController()
            customTableViewVC.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(customTableViewVC, animated: true)
        }
        
        if (indexPath.row == 12) {
            let editTableVC = EditTableViewViewController()
            editTableVC.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(editTableVC, animated: true)
        }
        
        if (indexPath.row == 13) {
            let searchBarVC = SearchBarViewController()
            searchBarVC.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(searchBarVC, animated: true)
        }
        
        if (indexPath.row == 14) {
            let collectionVC = CollectionViewViewController()
            collectionVC.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(collectionVC, animated: true)
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}
