# ⛨️ Guardian SSH

**Secure your SSH server with ease and reliability.**

## Description

*Guardian SSH* is a Bash script designed to enhance the security of your SSH server. It automates the configuration of essential security settings, reducing the risk of unauthorized access and brute-force attacks.

## Features

- **Automatic Configuration**: Sets up recommended security parameters for SSH.
- **Suspicious IP Blocking**: Integrates tools like Fail2Ban to block suspicious login attempts.
- **Real-time Notifications**: Get alerts on suspicious activities.
- **Easy Customization**: Modify settings according to your needs.

## Requirements

- Unix/Linux-based operating system.
- Root access or sudo privileges.

## Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/matteosalis04/Guardian-SSH.git
   ```

2. Navigate to the project directory:

   ```bash
   cd Guardian-SSH
   ```

3. Make the script executable:

   ```bash
   chmod +x guardian-ssh.sh
   ```

4. Run the script:

   ```bash
   sudo ./guardian-ssh.sh
   ```

## Usage

Once executed, *Guardian SSH* will apply security configurations to your SSH server. You can customize the settings by modifying the `guardian-ssh.conf` file.

## License

This project is distributed under the MIT License. See the [LICENSE](./LICENSE) file for details.

