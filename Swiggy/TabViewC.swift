//
//  TabViewC.swift
//  Swiggy
//
//  Created by Mayank Yadav on 02/08/22.
//

import Foundation
import UIKit

class TabViewC: UIPageViewController {
    var firstTab = HomeVC()
    var secondTab = FoodVC()
    var thirdTab = MartVC()
    var fourthTab = GenieVC()
    
    fileprivate lazy var pages: [UIViewController] = {
        return [self.getViewController(index: "1"),self.getViewController(index: "2"),self.getViewController(index: "3"),self.getViewController(index: "4")]
    }()
    
    fileprivate  func getViewController(index: String) -> UIViewController {
        if (index == "1"){
            return firstTab
        }else if (index == "2"){
            return secondTab
        } else if (index == "3") {
            return thirdTab
        } else if (index == "4") {
            return fourthTab
        } else {
            return firstTab
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        if let firstVC = pages.last {
            setViewControllers([firstVC], direction: .forward, animated: false, completion: nil)
        }
        for view in self.view.subviews {
            if let subView = view as? UIScrollView {
                subView.isScrollEnabled = false
            }
        }
    }
}
extension TabViewC: UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = pages.firstIndex(of: viewController) else { return nil }
        let oldIndex = viewControllerIndex - 1
        guard oldIndex >= 0  else { return pages.last}
        guard pages.count > oldIndex else { return nil}
        return pages[oldIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = pages.firstIndex(of: viewController) else { return nil }
        let nextIndex = viewControllerIndex + 1
        guard nextIndex < pages.count else { return pages.first}
        guard pages.count > nextIndex else { return nil}
        return pages[nextIndex]
    }
    func goToHomeVC(animated: Bool = false, completion: ((Bool) -> Void)? = nil) {
        setViewControllers([firstTab], direction: .forward, animated: animated, completion: completion)
    }
    func gotoFoodVC(animated: Bool = false, completion: ((Bool) -> Void)? = nil) {
        setViewControllers([secondTab], direction: .forward, animated: animated, completion: completion)
    }
    func goToMartVC(animated: Bool = false, completion: ((Bool) -> Void)? = nil) {
        setViewControllers([thirdTab], direction: .forward, animated: animated, completion: completion)
    }
    func gotoGenieVC(animated: Bool = false, completion: ((Bool) -> Void)? = nil) {
        setViewControllers([fourthTab], direction: .forward, animated: animated, completion: completion)
    }
}


