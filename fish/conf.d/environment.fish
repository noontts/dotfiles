# Add RVM to PATH
set -x PATH $PATH $HOME/.rvm/bin

# Set JAVA_HOME
set -x JAVA_HOME /Library/Java/JavaVirtualMachines/jdk-17.jdk/Contents/Home

# Set ANDROID_SDK_ROOT and add emulator and platform-tools to PATH
set -x ANDROID_SDK_ROOT $HOME/Library/Android/sdk
set -x PATH $PATH $ANDROID_SDK_ROOT/emulator
set -x PATH $PATH $ANDROID_SDK_ROOT/platform-tools

# Add Flutter to PATH
set -x PATH $HOME/development/flutter/bin $PATH

# Add Go binary directory to PATH
set -x PATH $HOME/go/bin $PATH

# Add pub-cache binary directory to PATH
set -x PATH "$PATH" "$HOME/.pub-cache/bin"
