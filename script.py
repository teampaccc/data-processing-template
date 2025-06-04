import module
import argparse

parser = argparse.ArgumentParser(
                    prog='print message',
                    description='Introduce yourself to the world',)
parser.add_argument('--name', type=str, default='John Doe', help='your name')

args = parser.parse_args()

if __name__ == "__main__":
    # This is where you would add code to perform data processing tasks
    # For example, reading files, processing data, etc.

    # Call the function from the module
    module.print_message(args.name)  # Replace with your name or any other string