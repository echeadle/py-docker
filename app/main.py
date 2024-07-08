import os
from dotenv import load_dotenv


load_dotenv()

def main():
    greeting = os.getenv("HELLO")
    print(greeting)
    print("getting closer")

if __name__ == '__main__':
    main()
