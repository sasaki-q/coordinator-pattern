import UIKit

protocol TableCoordinatorDelegate: AnyObject {
    func pushScreen(i: Int) -> Void
}

class TableCoordinator: Coordinator {
    private let navigator: UINavigationController
    private var tableViewController: TableViewController?
    
    
    init(navigator: UINavigationController) {
        self.navigator = navigator
    }
    
    func start() {
        let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TableViewController") as! TableViewController
        viewController.coordinatorDelegate = self
        self.tableViewController = viewController
        navigator.setViewControllers([viewController], animated: false)
    }
}

extension TableCoordinator: TableCoordinatorDelegate {
    func pushScreen(i: Int) {
        let coordinator = NextViewCoordinator(navigator: self.navigator, index: i)
        coordinator.start()
        
    }
}
