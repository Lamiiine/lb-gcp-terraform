def validate_input(prompt):
    while True:
        value = input(prompt)
        if value:
            return value
        print("Input cannot be empty. Please try again.")

def validate_ports_ranges(prompt):
    while True:
        value = input(prompt)
        try:
            ports = eval(value)
            if isinstance(ports, list) and all(isinstance(port, str) for port in ports):
                return ports
        except:
            pass
        print('Input must be a list of strings (e.g., ["80", "443"]). Please try again.')

def validate_integer(prompt):
    while True:
        value = input(prompt)
        if value.isdigit():
            return int(value)
        print("Input must be an integer. Please try again.")
