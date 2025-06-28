# 🛡️ TPM Spoofer for Windows 11 (No BIOS Modding)

This project spoofs the presence of a Trusted Platform Module (TPM) to bypass Windows 11’s hardware requirements — **without modifying your BIOS**.

> ✅ Software-only. No firmware flashing. No hardware programmers needed.

---

## 📋 Requirements

- Windows 10 or 11 system
- Local Administrator privileges
- [Spoofer.exe]
- Optional: [`tpm-info.exe`] to verify results

---

## 💡 What It Does

- Emulates a valid TPM 2.0 environment via memory patching or service spoofing
- Allows Windows 11 setup, updates, or system tools to detect a TPM even if one doesn’t exist
- Safe and reversible — no BIOS or UEFI modification required

---

## 🛠️ How to Use

1. Download and extract this repository
2. Right-click `Spoofer.exe` → **Run as Administrator**
3. Wait for confirmation
4. Reboot your system
5. Run `tpm.msc` or `tpm-info.exe` to check spoofed TPM status

---

## 🔄 Revert Changes

To undo the spoof:
1. Run `Spoofer.exe` again (it will detect spoof and remove it)
2. Or use the included `restore.bat`
3. Reboot

---

## ⚠️ Disclaimer

> ❗ This tool is intended for **educational and legacy hardware testing purposes** only.

- It may violate Microsoft’s hardware compatibility terms.
- Do **not** use this in secure production environments.
- Use at your own risk — the authors are not liable for system issues or data loss.

---

## ✅ Use Cases

- Installing or upgrading to Windows 11 on unsupported PCs
- Running Windows 11 in virtual machines (VMware/VirtualBox) without TPM passthrough
- Testing Windows 11 compatibility layers in labs or emulated environments

---

## 💬 Need Help?

Open an issue or start a discussion. Contributions and improvements welcome!

---

## 🔐 Credits

- Based on reverse engineering of `appraiser.dll` and Windows hardware check logic
- Community research from MDL, GitHub, and open TPM emulation tools

