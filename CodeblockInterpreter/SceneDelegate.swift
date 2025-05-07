import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        self.window = UIWindow(windowScene: windowScene)
        let viewController = ViewController()  // Ваш ViewController
        let navigationController = UINavigationController(rootViewController: viewController)
        
        self.window?.rootViewController = navigationController
        self.window?.makeKeyAndVisible()
    }
    
    // Остальные методы делегата сцены можно оставить как есть, например:
    func sceneDidDisconnect(_ scene: UIScene) {
        // Called when the scene has been released by the system.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
    }
    
    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene moves from inactive to active state.
    }
    
    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from active to inactive state.
    }
    
    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from background to foreground.
    }
    
    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from foreground to background.
    }
}
