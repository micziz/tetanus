# Tetanus is a simple script to setup a rust environment.

function tetanus_setup() {
    # Check if rustc is installed.
    if ! rustc --version > /dev/null; then
        # Install rust.
        curl https://sh.rustup.rs -sSf | sh -s -- -y
    fi

}


printf "Tetanus is a simple script to setup a rust environment.\n"
echo "Do you whish to install? (y/n)"
read -r answer
if [ "$answer" = "y" ]; then
    echo "Installing..."
    tetanus_setup
else 
    echo "Exiting..."
    exit 1
fi