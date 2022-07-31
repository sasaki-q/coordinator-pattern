import UIKit

class NextViewCoordinator: Coordinator {
    private let navigator: UINavigationController
    private var viewController: NextScreenViewController?
    
    private let index: Int
    
    init(navigator: UINavigationController, index: Int) {
        self.index = index
        self.navigator = navigator
    }
    
    func start() {
        let viewController = UIStoryboard(name: "Next", bundle: nil).instantiateViewController(withIdentifier: "NextScreenViewController") as! NextScreenViewController
        viewController.passedIndex = self.index
        self.viewController = viewController
        navigator.pushViewController(viewController, animated: true)
    }
}
