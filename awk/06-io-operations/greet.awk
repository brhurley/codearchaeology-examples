BEGIN {
    printf "Enter your name: "
    if ((getline name) > 0)
        printf "Hello, %s!\n", name
}
