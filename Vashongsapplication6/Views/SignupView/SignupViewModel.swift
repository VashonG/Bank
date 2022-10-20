import Foundation
import SwiftUI

class SignupViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var inputfieldsText: String = ""
    @Published var inputfieldsoneText: String = ""
    @Published var isValidInputfieldsoneText: Bool = true
    @Published var inputfieldstwoText: String = ""
    @Published var inputfieldsthreeText: String = ""
    @Published var inputfieldsfourText: String = ""
    @Published var inputfieldsfiveText: String = ""
    @Published var googleSignInResponse: GoogleSignInResponse?

    func googleSignIn() {
        GoogleSignInHelper.shared.signIn(completion: { response in
            if let response = response {
                self.onSuccessGoogleSignIn(response: response)
            } else {
                self.onErrorGoogleSignIn()
            }
        })
    }

    func onSuccessGoogleSignIn(response: googleSignIn) {
        self.googleSignIn = response
    }

    func onErrorGoogleSignIn() {}
}
