import SwiftUI

struct SignupView: View {
    @StateObject var signupViewModel = SignupViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
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
                        Text(StringConstants.kLblSignUp)
                            .font(FontScheme.kSFProBold(size: getRelativeHeight(34.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(119.0), height: getRelativeHeight(34.0),
                                   alignment: .topLeading)
                            .padding(.vertical, getRelativeHeight(28.0))
                            .padding(.horizontal, getRelativeWidth(16.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(114.0),
                           alignment: .leading)
                    .background(ColorConstants.Gray100)
                    ZStack(alignment: .bottomLeading) {
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kLblGeneralDetails)
                                .font(FontScheme.kSFProSemibold(size: getRelativeHeight(20.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(145.0),
                                       height: getRelativeHeight(20.0), alignment: .topLeading)
                                .padding(.horizontal, getRelativeWidth(16.0))
                            VStack(alignment: .leading, spacing: 0) {
                                VStack {
                                    HStack(spacing: 0) {
                                        TextField(StringConstants.kLblJohnSmith,
                                                  text: $signupViewModel.inputfieldsText)
                                            .font(FontScheme
                                                .kSFProRegular(size: getRelativeHeight(17.0)))
                                            .foregroundColor(ColorConstants.Black900)
                                            .padding()
                                    }
                                    .onTapGesture {
                                        signupViewModel.googleSignIn()
                                    }
                                    .frame(width: getRelativeWidth(342.0),
                                           height: getRelativeHeight(30.0), alignment: .trailing)
                                    Divider()
                                        .background(ColorConstants.Black900)
                                }
                                .frame(width: getRelativeWidth(342.0),
                                       height: getRelativeHeight(30.0), alignment: .trailing)
                                .padding(.leading, getRelativeWidth(10.0))
                                Text(StringConstants.kLblJohnSmith2)
                                    .font(FontScheme.kSFProRegular(size: getRelativeHeight(17.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(82.0),
                                           height: getRelativeHeight(17.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(15.0))
                                    .padding(.horizontal, getRelativeWidth(15.0))
                                Divider()
                                    .frame(width: getRelativeWidth(342.0),
                                           height: getRelativeHeight(1.0), alignment: .trailing)
                                    .background(ColorConstants.Gray8005b)
                                    .padding(.top, getRelativeHeight(10.0))
                                    .padding(.leading, getRelativeWidth(10.0))
                                Group {
                                    VStack {
                                        HStack(spacing: 0) {
                                            SecureField(StringConstants.kLblPassword,
                                                        text: $signupViewModel.inputfieldsoneText)
                                                .font(FontScheme
                                                    .kSFProRegular(size: getRelativeHeight(17.0)))
                                                .foregroundColor(ColorConstants.Gray8004c)
                                                .padding()
                                                .keyboardType(.default)
                                        }
                                        .frame(width: getRelativeWidth(342.0),
                                               height: getRelativeHeight(30.0),
                                               alignment: .trailing)
                                        Divider()
                                            .background(ColorConstants.Gray8004c)
                                    }
                                    .onChange(of: signupViewModel.inputfieldsoneText) { newValue in

                                        signupViewModel.isValidInputfieldsoneText = newValue
                                            .isValidPassword(isMandatory: true)
                                    }
                                    .frame(width: getRelativeWidth(342.0),
                                           height: getRelativeHeight(30.0), alignment: .trailing)
                                    .padding(.top, getRelativeHeight(13.0))
                                    .padding(.leading, getRelativeWidth(10.0))
                                    if !signupViewModel.isValidInputfieldsoneText {
                                        Text("Please enter valid password.")
                                            .foregroundColor(Color.red)
                                            .font(FontScheme
                                                .kSFProRegular(size: getRelativeHeight(17.0)))
                                            .frame(width: getRelativeWidth(342.0),
                                                   height: getRelativeHeight(30.0),
                                                   alignment: .trailing)
                                    }
                                }
                                Text(StringConstants.kMsgConfirmPasswor)
                                    .font(FontScheme.kSFProRegular(size: getRelativeHeight(17.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Gray8004c)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(144.0),
                                           height: getRelativeHeight(17.0), alignment: .topLeading)
                                    .padding(.vertical, getRelativeHeight(13.0))
                                    .padding(.horizontal, getRelativeWidth(16.0))
                            }
                            .frame(width: getRelativeWidth(358.0), height: getRelativeHeight(176.0),
                                   alignment: .leading)
                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                       bottomRight: 8.0)
                                    .fill(ColorConstants.WhiteA700))
                            .padding(.top, getRelativeHeight(14.0))
                            Text(StringConstants.kLblAddress)
                                .font(FontScheme.kSFProSemibold(size: getRelativeHeight(20.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(80.0),
                                       height: getRelativeHeight(20.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(25.0))
                                .padding(.horizontal, getRelativeWidth(16.0))
                            VStack(alignment: .leading, spacing: 0) {
                                VStack {
                                    HStack(spacing: 0) {
                                        TextField(StringConstants.kLblGreatStreet1,
                                                  text: $signupViewModel.inputfieldstwoText)
                                            .font(FontScheme
                                                .kSFProRegular(size: getRelativeHeight(17.0)))
                                            .foregroundColor(ColorConstants.Black900)
                                            .padding()
                                    }
                                    .frame(width: getRelativeWidth(342.0),
                                           height: getRelativeHeight(30.0), alignment: .trailing)
                                    Divider()
                                        .background(ColorConstants.Black900)
                                }
                                .frame(width: getRelativeWidth(342.0),
                                       height: getRelativeHeight(30.0), alignment: .trailing)
                                .padding(.leading, getRelativeWidth(10.0))
                                VStack {
                                    HStack(spacing: 0) {
                                        TextField(StringConstants.kLblSecondLine,
                                                  text: $signupViewModel.inputfieldsthreeText)
                                            .font(FontScheme
                                                .kSFProRegular(size: getRelativeHeight(17.0)))
                                            .foregroundColor(ColorConstants.Gray8004c)
                                            .padding()
                                    }
                                    .frame(width: getRelativeWidth(342.0),
                                           height: getRelativeHeight(30.0), alignment: .trailing)
                                    Divider()
                                        .background(ColorConstants.Gray8004c)
                                }
                                .frame(width: getRelativeWidth(342.0),
                                       height: getRelativeHeight(30.0), alignment: .trailing)
                                .padding(.top, getRelativeHeight(13.0))
                                .padding(.leading, getRelativeWidth(10.0))
                                VStack {
                                    HStack(spacing: 0) {
                                        TextField(StringConstants.kLblCity,
                                                  text: $signupViewModel.inputfieldsfourText)
                                            .font(FontScheme
                                                .kSFProRegular(size: getRelativeHeight(17.0)))
                                            .foregroundColor(ColorConstants.Gray8004c)
                                            .padding()
                                    }
                                    .frame(width: getRelativeWidth(342.0),
                                           height: getRelativeHeight(28.0), alignment: .trailing)
                                    Divider()
                                        .background(ColorConstants.Gray8004c)
                                }
                                .frame(width: getRelativeWidth(342.0),
                                       height: getRelativeHeight(28.0), alignment: .trailing)
                                .padding(.top, getRelativeHeight(15.0))
                                .padding(.leading, getRelativeWidth(10.0))
                                VStack {
                                    HStack(spacing: 0) {
                                        TextField(StringConstants.kLblState,
                                                  text: $signupViewModel.inputfieldsfiveText)
                                            .font(FontScheme
                                                .kSFProRegular(size: getRelativeHeight(17.0)))
                                            .foregroundColor(ColorConstants.Gray8004c)
                                            .padding()
                                    }
                                    .frame(width: getRelativeWidth(342.0),
                                           height: getRelativeHeight(30.0), alignment: .trailing)
                                    Divider()
                                        .background(ColorConstants.Gray8004c)
                                }
                                .frame(width: getRelativeWidth(342.0),
                                       height: getRelativeHeight(30.0), alignment: .trailing)
                                .padding(.top, getRelativeHeight(13.0))
                                .padding(.leading, getRelativeWidth(10.0))
                                Text(StringConstants.kLblZipCode)
                                    .font(FontScheme.kSFProRegular(size: getRelativeHeight(17.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Gray8004c)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(72.0),
                                           height: getRelativeHeight(17.0), alignment: .topLeading)
                                    .padding(.vertical, getRelativeHeight(13.0))
                                    .padding(.horizontal, getRelativeWidth(16.0))
                            }
                            .frame(width: getRelativeWidth(358.0), height: getRelativeHeight(220.0),
                                   alignment: .leading)
                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                       bottomRight: 8.0)
                                    .fill(ColorConstants.WhiteA700))
                            .padding(.top, getRelativeHeight(14.0))
                        }
                        .frame(width: getRelativeWidth(358.0), height: getRelativeHeight(492.0),
                               alignment: .center)
                        .padding(.bottom, getRelativeHeight(183.0))
                        .padding(.horizontal, getRelativeWidth(16.0))
                        VStack {
                            Divider()
                                .frame(width: UIScreen.main.bounds.width,
                                       height: getRelativeHeight(1.0), alignment: .leading)
                                .background(ColorConstants.Gray8005b)
                            Text(StringConstants.kMsgBySigningUp)
                                .font(FontScheme.kSFProRegular(size: getRelativeHeight(13.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Gray80099)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(358.0),
                                       height: getRelativeHeight(27.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(19.0))
                                .padding(.horizontal, getRelativeWidth(16.0))
                            Button(action: {
                                UIApplication.shared.windows.filter { $0.isKeyWindow }.first?
                                    .rootViewController = UIHostingController(rootView: CardsView())
                            }, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLblSignUp)
                                        .font(FontScheme
                                            .kSFProSemibold(size: getRelativeHeight(17.0)))
                                        .fontWeight(.semibold)
                                        .padding(.horizontal, getRelativeWidth(30.0))
                                        .padding(.vertical, getRelativeHeight(17.0))
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(358.0),
                                               height: getRelativeHeight(54.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 16.0, topRight: 16.0,
                                                                   bottomLeft: 16.0,
                                                                   bottomRight: 16.0)
                                                .fill(ColorConstants.LightBlueA700))
                                        .padding(.top, getRelativeHeight(19.0))
                                        .padding(.horizontal, getRelativeWidth(16.0))
                                }
                            })
                            .frame(width: getRelativeWidth(358.0), height: getRelativeHeight(54.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 16.0, topRight: 16.0,
                                                       bottomLeft: 16.0, bottomRight: 16.0)
                                    .fill(ColorConstants.LightBlueA700))
                            .padding(.top, getRelativeHeight(19.0))
                            .padding(.horizontal, getRelativeWidth(16.0))
                            VStack {
                                Text(StringConstants.kLblLogin)
                                    .font(FontScheme.kSFProSemibold(size: getRelativeHeight(17.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.LightBlueA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(46.0),
                                           height: getRelativeHeight(18.0), alignment: .topLeading)
                            }
                            .frame(width: getRelativeWidth(46.0), height: getRelativeHeight(18.0),
                                   alignment: .center)
                            .clipShape(Capsule())
                            .padding(.top, getRelativeHeight(19.0))
                            .padding(.bottom, getRelativeHeight(20.0))
                            .padding(.horizontal, getRelativeWidth(16.0))
                        }
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(210.0),
                               alignment: .bottomLeading)
                        .background(ColorConstants.Gray100Cc)
                        .padding(.top, getRelativeHeight(465.0))
                    }
                    .hideNavigationBar()
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(675.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(8.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(797.0),
                       alignment: .leading)
                .background(ColorConstants.Gray100)
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
            signupViewModel.googleSignIn()
        }
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
