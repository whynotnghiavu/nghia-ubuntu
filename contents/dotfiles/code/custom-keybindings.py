import subprocess

# Define the custom keybindings dictionary
custom_keybindings = {
    "F1": "google-chrome https://chatgpt.com",
    # "F2": "google-chrome https://chatgpt.com",
    "F3": "python3 /home/vvn20206205/Downloads/Nghia/Git/company20206205/nghia-wifi-proxy/contents/ubuntu.py",
    "F4": "code /home/vvn20206205/Downloads/Nghia/Git/company20206205/nghia-push/nghia-push.code-workspace",

    #
    #
    #

    # "F5": "google-chrome https://chatgpt.com",
    "F6": "code /home/vvn20206205/Downloads/Nghia/Git/company20206205/nghia-note/nghia-note.code-workspace",
    "F7": "google-chrome https://chatgpt.com",
    "F8": "code /home/vvn20206205/Downloads/Nghia/Git/company20206205/nghia-ubuntu/nghia-ubuntu.code-workspace",

    #
    #
    #

    "F9": "python3 /home/vvn20206205/Downloads/Nghia/Git/company20206205/nghia-ubuntu-link/contents/nghia-ubuntu-link.py",
    # "F10": "google-chrome https://translate.google.com/?hl=vi&sl=en&tl=vi&op=translate",
    "F11": "python3 /home/vvn20206205/Downloads/Nghia/Git/company20206205/nghia-github-template/contents/ubuntu.py",
    # "F12": "code /home/vvn20206205/Downloads/Nghia/Git/company20206205/nghia-push/nghia-push.code-workspace",
}

# print(custom_keybindings)


# Set the custom keybindings list
keybindings_list = []

for i, (key, command) in enumerate(custom_keybindings.items()):
    print(f"{key}: {command}")
    keybindings_list.append(
        f"/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom{i}/")


# print(keybindings_list)

# Set the custom keybindings list in gsettings
subprocess.run([
    "gsettings",
    "set",
    "org.gnome.settings-daemon.plugins.media-keys",
    "custom-keybindings",
    str(keybindings_list)
])


# Configure each custom keybinding
for index, (key, command) in enumerate(custom_keybindings.items()):
    binding_index = f"custom{index}/"

    # Configure binding
    subprocess.run([
        "gsettings",
        "set",
        f"org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:{keybindings_list[index]}",
        "binding",
        f"'{key}'"
    ])

    # Configure command
    subprocess.run([
        "gsettings",
        "set",
        f"org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:{keybindings_list[index]}",
        "command",
        f"'{command}'"
    ])

    # Configure name
    subprocess.run([
        "gsettings",
        "set",
        f"org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:{keybindings_list[index]}",
        "name",
        f"'{key}'"
    ])
