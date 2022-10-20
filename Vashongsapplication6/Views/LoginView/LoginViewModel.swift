import Foundation
import SwiftUI

class LoginViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var googleSignInResponse: GoogleSignInResponse?
}
