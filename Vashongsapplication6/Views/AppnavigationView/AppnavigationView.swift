import SwiftUI

struct AppnavigationView: View {
    @StateObject var appnavigationViewModel = AppnavigationViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack {
                        Text(StringConstants.kLblAppNavigation)
                            .font(Font.system(size: getRelativeHeight(20.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(23.0),
                                   alignment: .leading)
                            .padding(.vertical, getRelativeHeight(10.0))
                            .padding(.horizontal, getRelativeWidth(20.0))
                        Text(StringConstants.kMsgCheckYourApp)
                            .font(Font.system(size: getRelativeHeight(16.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Bluegray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(19.0),
                                   alignment: .leading)
                            .padding(.leading, getRelativeWidth(20.0))
                        Divider()
                            .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(1.0),
                                   alignment: .center)
                            .background(ColorConstants.Black900)
                            .padding(.top, getRelativeHeight(5.0))
                    }
                    .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(67.0))
                    .background(ColorConstants.WhiteA700)
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack {
                            Group {
                                VStack {
                                    Text(StringConstants.kLblOne)
                                        .font(Font.system(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    Divider()
                                        .frame(width: getRelativeWidth(375.0),
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "OneView"
                                }
                                .frame(width: getRelativeWidth(375.0),
                                       height: getRelativeHeight(48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblTwo)
                                        .font(Font.system(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    Divider()
                                        .frame(width: getRelativeWidth(375.0),
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "TwoView"
                                }
                                .frame(width: getRelativeWidth(375.0),
                                       height: getRelativeHeight(48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblThree)
                                        .font(Font.system(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    Divider()
                                        .frame(width: getRelativeWidth(375.0),
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "ThreeView"
                                }
                                .frame(width: getRelativeWidth(375.0),
                                       height: getRelativeHeight(48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblSignup2)
                                        .font(Font.system(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    Divider()
                                        .frame(width: getRelativeWidth(375.0),
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "SignupView"
                                }
                                .frame(width: getRelativeWidth(375.0),
                                       height: getRelativeHeight(48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblLogin)
                                        .font(Font.system(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    Divider()
                                        .frame(width: getRelativeWidth(375.0),
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "LoginView"
                                }
                                .frame(width: getRelativeWidth(375.0),
                                       height: getRelativeHeight(48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblSettings)
                                        .font(Font.system(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    Divider()
                                        .frame(width: getRelativeWidth(375.0),
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "SettingsView"
                                }
                                .frame(width: getRelativeWidth(375.0),
                                       height: getRelativeHeight(48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblTransactions)
                                        .font(Font.system(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    Divider()
                                        .frame(width: getRelativeWidth(375.0),
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "TransactionsView"
                                }
                                .frame(width: getRelativeWidth(375.0),
                                       height: getRelativeHeight(48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblPayments)
                                        .font(Font.system(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    Divider()
                                        .frame(width: getRelativeWidth(375.0),
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "PaymentsView"
                                }
                                .frame(width: getRelativeWidth(375.0),
                                       height: getRelativeHeight(48.0))
                                .background(ColorConstants.WhiteA700)
                            }
                            Group {
                                VStack {
                                    Text(StringConstants.kLblCards)
                                        .font(Font.system(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    Divider()
                                        .frame(width: getRelativeWidth(375.0),
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "CardsView"
                                }
                                .frame(width: getRelativeWidth(375.0),
                                       height: getRelativeHeight(48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblLoading2)
                                        .font(Font.system(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    Divider()
                                        .frame(width: getRelativeWidth(375.0),
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "LoadingView"
                                }
                                .frame(width: getRelativeWidth(375.0),
                                       height: getRelativeHeight(48.0))
                                .background(ColorConstants.WhiteA700)
                            }
                        }
                        .frame(width: getRelativeWidth(375.0))
                        .background(ColorConstants.WhiteA700)
                    }
                }
                .frame(width: getRelativeWidth(375.0), alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: OneView(),
                                   tag: "OneView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: TwoView(),
                                   tag: "TwoView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: ThreeView(),
                                   tag: "ThreeView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: SignupView(),
                                   tag: "SignupView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: LoginView(),
                                   tag: "LoginView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: SettingsView(),
                                   tag: "SettingsView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: TransactionsView(),
                                   tag: "TransactionsView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: PaymentsView(),
                                   tag: "PaymentsView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: CardsView(),
                                   tag: "CardsView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: LoadingView(),
                                   tag: "LoadingView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.WhiteA700)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct AppnavigationView_Previews: PreviewProvider {
    static var previews: some View {
        AppnavigationView()
    }
}
