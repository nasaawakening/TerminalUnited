# =========================
# TerminalUnited Custom
# =========================

alias build="mkdir"
alias forge="pkg"
alias tvl="cd"
alias dty="rm"
alias dtyf="rm -rf"
alias cpyu="cp"
alias mvu="mv"
alias tf="find"
alias top="xdg-open"
alias tru="tree"

# update system
alias ungrade="pkg upgrade"
alias undate="pkg update"
alias undate && ungrade="pkg update && pkg upgrade"

# info
alias u="info"

# TerminalUnited system commands
alias tud="tu doctor"
alias hu="tu help"
alias tvn="tu version"

#yes command
alias -yp="-y"

#Network tools
alias ntcck="ping -c 4 google.com"
alias myp="curl ifconfig.me"
alias spdu="speedtest-cli"
alias scwf="termux-wifi-scaninfo"
alias pg="ping"

# =========================
# Welcome Message
# =========================

clear
echo ""
echo "Welcome to TerminalUnited"
echo "Developed by Nasa"
echo ""

# =========================
# ASCII Logo
# =========================

echo "████████╗██╗   ██╗"
echo "╚══██╔══╝██║   ██║"
echo "   ██║   ██║   ██║"
echo "   ██║   ██║   ██║"
echo "   ██║   ╚██████╔╝"
echo "   ╚═╝    ╚═════╝ "

echo ""
echo "TerminalUnited Ready 🚀"
echo ""

#==========================
#-yp command
#==========================

forge() {
    for arg in "$@"; do
        if [[ "$arg" == "-yp" ]]; then
            arg="-y"
        fi
        args="$args $arg"
    done
    pkg $args
}

undate && ungrade() {
    args=()
    for arg in "$@"; do
        if [[ "$arg" == "-yp" ]]; then
            args+=("-y")
        else
            args+=("$arg")
        fi
    done

    pkg update "${args[@]}"
    pkg upgrade "${args[@]}"
}

ungrade() {
    args=()
    for arg in "$@"; do
        if [[ "$arg" == "-yp" ]]; then
            args+=("-y")
        else
            args+=("$arg")
        fi
    done

    pkg upgrade "${args[@]}"
}

# TerminalUnited Core Commands

tbd() {
    echo "🔧 Building project..."
    ./gradlew assembleDebug
}

trn() {
    echo "🚀 Running app..."
    adb install app/build/outputs/apk/debug/app-debug.apk
}

tcln() {
    echo "📥 Cloning repository..."
    git clone "$1"
}

tdv() {
    echo "⚙️ TerminalUnited Developer Mode Activated"
    export TU_DEV=1
}
