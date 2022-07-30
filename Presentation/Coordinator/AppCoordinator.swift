import UIKit

final class AppCoordinator: Coordinator {
    let window: UIWindow
    let rootViewController: UINavigationController
    let coordinator: TableCoordinator

    init(window: UIWindow) {
        self.window = window
        self.rootViewController = UINavigationController()
        self.window.rootViewController = rootViewController
        coordinator = TableCoordinator(navigator: rootViewController)
    }

    func start() {
        window.rootViewController = rootViewController
        coordinator.start()
        window.makeKeyAndVisible()
    }
}
