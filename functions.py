import re
def checkpasswordvalidity(password):
    if len(password) < 6:
     return " password must contain 6 character"
    if not re.search(r'[A-Z]', password):
     return " password must contain one uppercase"
    if not re.search(r'[a-z]', password):
     return "Password must contain at least one lowercase letter."
    if not re.search(r'[0-9]', password):
     return "Password must contain at least one digit."
    if not re.search(r'[!@#$%^&*(),.?":{}|<>]', password):
     return  " password must contain special character"
    else:
     return True
