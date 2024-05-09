import random
import string

def generate_password(length=12):
    """Generate a random password of specified length."""
    characters = string.ascii_letters + string.digits + string.punctuation
    password = ''.join(random.choice(characters) for _ in range(length))
    return password

def main():
    print("Welcome to the Password Generator!")
    length = int(input("Enter the length of the password you want to generate: "))
    
    if length < 4:
        print("Password length must be at least 4 characters.")
    else:
        password = generate_password(length)
        print("Your generated password is:", password)

if __name__ == "__main__":
    main()
