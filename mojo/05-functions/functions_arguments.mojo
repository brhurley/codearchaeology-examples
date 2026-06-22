# 'read' is the default: an immutable reference, no copy made
fn describe(read value: Int):
    print("The value is", value)

# 'mut': the function modifies the caller's variable in place
fn double(mut value: Int):
    value *= 2

# 'owned': the function gets its own value to mutate and return
fn shout(owned text: String) -> String:
    text += "!!!"
    return text

def main():
    var number = 10
    describe(number)

    double(number)
    print("After double:", number)

    var message = String("listen up")
    print(shout(message))
    print("Original is unchanged:", message)
