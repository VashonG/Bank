import Foundation
import GoogleSignIn

struct GoogleSignInResponse {
    var id: String?
    var email: String?
    var givenName: String?
    var familyName: String?
    var displayName: String?
    var photoUrl: String?
    var serverAuthCode: String?
    var idToken: String?
}

private var signInConfig = GIDConfiguration(clientID: "")

class GoogleSignInHelper {
    public static var shared = GoogleSignInHelper()

    func signIn(completion: @escaping (_ user: GoogleSignInResponse?) -> Void) {
        if !hasSignIn() {
            // Get Currunt RootView
            guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
            else { return }
            guard let rootViewController = windowScene.windows.first?.rootViewController
            else { return }

            GIDSignIn.sharedInstance
                .signIn(with: signInConfig, presenting: rootViewController) { user, error in
                    guard error == nil else { return }
                    if let user = GIDSignIn.sharedInstance.currentUser {
                        completion(self.getGoogleSignInUser(user))
                    }
                }
        } else {
            if let user = GIDSignIn.sharedInstance.currentUser {
                completion(getGoogleSignInUser(user))
            }
        }
    }

    func hasSignIn() -> Bool {
        return GIDSignIn.sharedInstance.hasPreviousSignIn()
    }

    func getGoogleSignInUser(_ user: GIDGoogleUser) -> GoogleSignInResponse {
        let userID = user.userID
        let email = user.profile?.email
        let givenName = user.profile?.givenName
        let familyName = user.profile?.familyName
        let name = user.profile?.name
        var profilePicture: String?
        let serverAuthCode = user.serverAuthCode
        let clientId = user.serverClientID

        if user.profile?.hasImage != nil {
            let url = user.profile?.imageURL(withDimension: 300)
            profilePicture = url?.absoluteString
        }

        let googleUser = GoogleSignInResponse(id: userID,
                                              email: email,
                                              givenName: givenName,
                                              familyName: familyName,
                                              displayName: name,
                                              photoUrl: profilePicture,
                                              serverAuthCode: serverAuthCode,
                                              idToken: clientId)
        return googleUser
    }
}
