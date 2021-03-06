import SwiftUI
import Swinject

protocol StateModel: ObservableObject {
    var resolver: Resolver? { get set }
    var isInitial: Bool { get set }
    func subscribe()
    func showModal(for screen: Screen?)
    func hideModal()
    func view(for screen: Screen) -> AnyView
}

class BaseStateModel<Provider>: StateModel, Injectable where Provider: FreeAPS.Provider {
    @Injected() var router: Router!
    var isInitial: Bool = true
    private(set) var provider: Provider!

    var resolver: Resolver? {
        didSet {
            if let resolver = resolver {
                injectServices(resolver)
                provider = Provider(resolver: resolver)
                subscribe()
            }
        }
    }

    var lifetime = Lifetime()

    func subscribe() {}

    func showModal(for screen: Screen?) {
        router.mainModalScreen.send(screen)
    }

    func hideModal() {
        router.mainModalScreen.send(nil)
    }

    func view(for screen: Screen) -> AnyView {
        router.view(for: screen)
    }
}
