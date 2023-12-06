//
//  EditProfileView.swift
//  SwiftUITest
//
//  Created by Anna Sumire on 06.12.23.
//

import SwiftUI

struct EditProfileView: View {
    
    @State private var name = ""
    @State private var email = ""
    @State private var password = ""
    @State private var dob = ""
    @State private var country = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "chevron.backward")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 12, height: 12)
                    .padding(.leading, 16)
                
                Spacer()
                
                Text("Edit Profile")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity)
            }
            .padding(.bottom, 20)
            
            ZStack(alignment: .bottomTrailing) {
                Image("image2")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 180, height: 180)
                    .clipShape(Circle())
                    .padding(.bottom, 40)
                    .frame(maxWidth: .infinity)
                
                Image("camera")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 32, height: 32)
                    .padding(.bottom, 40)
                    .padding(.trailing, 120)
            }
            
            Group {
                Text("Name")
                    .font(.system(size: 16))
                    .bold()
                
                TextField("Enter your name", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            .padding(.horizontal, 24)
            
            Group {
                Text("Email")
                    .font(.system(size: 16))
                    .bold()
                
                TextField("Enter your email", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.emailAddress)
                    .autocapitalization(.none)
            }
            .padding(.horizontal, 24)
            
            Group {
                Text("Password")
                    .font(.system(size: 16))
                    .bold()
                
                SecureField("Enter your password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            .padding(.horizontal, 24)
            
            Group {
                Text("Date of Birth")
                    .font(.system(size: 16))
                    .bold()
                
                TextField("Enter your date of birth", text: $dob)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            .padding(.horizontal, 24)
            
            Group {
                Text("Country/Region")
                    .font(.system(size: 16))
                    .bold()
                
                TextField("Enter your country/region", text: $country)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            .padding(.horizontal, 24)
            
            Spacer()
            
            Button(action: {
                print("Save Changes!")
            }) {
                Text("Save Changes")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 221, height: 45)
                    .background((Color(red: 0.14, green: 0.15, blue: 0.38, opacity: 1)))
                    .cornerRadius(6.0)
            }
            .frame(maxWidth: .infinity)
        }
        .padding()
    }
}

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView()
    }
}
