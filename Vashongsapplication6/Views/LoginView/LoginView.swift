import SwiftUI

struct LoginView: View {
    @StateObject var loginViewModel = LoginViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 0) {
                VStack(alignment: .leading, spacing: 0) {
                    VStack {
                        Image("img_modal")
                            .resizable()
                            .frame(width: UIScreen.main.bounds.width,
                                   height: getRelativeHeight(20.0), alignment: .center)
                            .scaledToFit()
                            .clipped()
                        Text(StringConstants.kLblCancel)
                            .font(FontScheme.kSFProSemibold(size: getRelativeHeight(17.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.LightBlueA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(58.0), height: getRelativeHeight(17.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(7.0))
                            .padding(.horizontal, getRelativeWidth(16.0))
                        Text(StringConstants.kLblLogin)
                            .font(FontScheme.kSFProBold(size: getRelativeHeight(34.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(84.0), height: getRelativeHeight(34.0),
                                   alignment: .topLeading)
                            .padding(.vertical, getRelativeHeight(28.0))
                            .padding(.horizontal, getRelativeWidth(16.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(114.0),
                           alignment: .leading)
                    .background(ColorConstants.Gray100)
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(114.0),
                       alignment: .leading)
                VStack {
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kLblJohnSmith2)
                            .font(FontScheme.kSFProRegular(size: getRelativeHeight(17.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(82.0), height: getRelativeHeight(17.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(15.0))
                            .padding(.horizontal, getRelativeWidth(15.0))
                        Divider()
                            .frame(width: getRelativeWidth(342.0), height: getRelativeHeight(1.0),
                                   alignment: .trailing)
                            .background(ColorConstants.Gray8005b)
                            .padding(.top, getRelativeHeight(10.0))
                            .padding(.leading, getRelativeWidth(10.0))
                        Text(StringConstants.kLblPassword)
                            .font(FontScheme.kSFProRegular(size: getRelativeHeight(17.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Gray8004c)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(75.0), height: getRelativeHeight(17.0),
                                   alignment: .topLeading)
                            .padding(.vertical, getRelativeHeight(13.0))
                            .padding(.horizontal, getRelativeWidth(16.0))
                    }
                    .frame(width: getRelativeWidth(358.0), height: getRelativeHeight(88.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                               bottomRight: 8.0)
                            .fill(ColorConstants.WhiteA700))
                    .padding(.horizontal, getRelativeWidth(16.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(88.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(8.0))
                VStack(alignment: .leading, spacing: 0) {
                    VStack {
                        Divider()
                            .frame(width: UIScreen.main.bounds.width,
                                   height: getRelativeHeight(1.0), alignment: .leading)
                            .background(ColorConstants.Gray8005b)
                        Button(action: {}, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblLogin)
                                    .font(FontScheme.kSFProSemibold(size: getRelativeHeight(17.0)))
                                    .fontWeight(.semibold)
                                    .padding(.horizontal, getRelativeWidth(30.0))
                                    .padding(.vertical, getRelativeHeight(17.0))
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(358.0),
                                           height: getRelativeHeight(54.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 16.0, topRight: 16.0,
                                                               bottomLeft: 16.0, bottomRight: 16.0)
                                            .fill(ColorConstants.LightBlueA700))
                                    .padding(.top, getRelativeHeight(15.0))
                                    .padding(.horizontal, getRelativeWidth(16.0))
                            }
                        })
                        .frame(width: getRelativeWidth(358.0), height: getRelativeHeight(54.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                                   bottomRight: 16.0)
                                .fill(ColorConstants.LightBlueA700))
                        .padding(.top, getRelativeHeight(15.0))
                        .padding(.horizontal, getRelativeWidth(16.0))
                        VStack {
                            Text(StringConstants.kLblSignUp)
                                .font(FontScheme.kSFProSemibold(size: getRelativeHeight(17.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.LightBlueA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(66.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                        }
                        .frame(width: getRelativeWidth(66.0), height: getRelativeHeight(18.0),
                               alignment: .center)
                        .clipShape(Capsule())
                        .padding(.top, getRelativeHeight(19.0))
                        .padding(.bottom, getRelativeHeight(20.0))
                        .padding(.horizontal, getRelativeWidth(16.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(158.0),
                           alignment: .leading)
                    .background(ColorConstants.Gray100Cc)
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(158.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(428.0))
            }
            .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
            .background(ColorConstants.Gray100)
            .padding(.top, getRelativeHeight(30.0))
            .padding(.bottom, getRelativeHeight(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.Gray100)
        .ignoresSafeArea()
        .hideNavigationBar()
        .onAppear {
            loginViewModel.googleSignIn()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
