import getpass


firebaseConfig = {
  "apiKey": "AIzaSyBO3l9aiE-EMIE73BalcR5shGAjBpA4TCw",
  "authDomain": "bsi-marcos.firebaseapp.com",
  "projectId": "bsi-marcos",
  "storageBucket": "bsi-marcos.appspot.com",
  "messagingSenderId": "14197148413",
  "appId": "1:14197148413:web:0322d2d1a34c3a8e4f4c94"
}

firebase = pyrebase.initialize_app(firebaseConfig)

auth = firebase.auth()
db = firebase.dataBase()

username = input("Digite o seu usuario: ")
password = getpass.getpass("Digite sua senha: ")

token = auth.sign_in_with_email_and_password("username", "password")

print(token)



tentativas = 0
try:
    user = auth.sign_in_with_email_and_password(username,password)

    if tentativas > 5:
        auth.update_user(user['localId'], {'disableUser': True})
    elif:
        auth.send_email_verification(user['idToken'])
        auth.send_password_reset_email(username)
except Exception as e:
    print(e)
    print("Login ou senha inválida")
    tentativas += 1
