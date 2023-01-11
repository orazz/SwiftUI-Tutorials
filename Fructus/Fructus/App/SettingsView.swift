//
//  SettingsView.swift
//  Fructus
//
//  Created by Oraz Atakishiyev on 11.01.2023.
//

import SwiftUI

struct SettingsView: View {

    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false

    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image(systemName: "info")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)

                            Text("Most fruits are naturally low in fat, sodium and some more text about vitamis etc some text some text some text.")
                                .font(.footnote)
                        }
                    }

                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Fructus", labelImage: "paintbrush")
                    ) {
                        Divider().padding(.vertical, 4)
                        Text("Most fruits are naturally low in fat, sodium and some more text about vitamis etc some text some text some text.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)

                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemGroupedBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    }

                    GroupBox(
                        label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")) {
                            SettingsRowView(name: "Developer", content: "orazz")
                            SettingsRowView(name: "Compatibility", content: "iOS 14")
                        }
                }
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing: Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "xmark")
                    })
                )
                .padding()
            } //: Scrolview
        } //: NavView
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
