# 🛡️ TPM Bypass Tool for Windows 10 & 11

This tool bypasses TPM 2.0 and Secure Boot requirements to allow installation and use of **Windows 10 and Windows 11** on unsupported hardware.

✅ Software-only — no BIOS flashing  
✅ Supports both Windows 10 and 11  
✅ Lets you leave TPM **disabled in BIOS** to prevent popups and errors

---

## 📋 Requirements

- Windows 10 or Windows 11  
- Administrator privileges  
- Spoofer.exe (bypass tool)  
- (Optional) tpm-info.exe to verify TPM status

---

## 💡 What This Does

- **Bypasses** TPM, RAM, and Secure Boot checks during Windows setup or upgrade  
- Does **not** spoof or emulate TPM hardware presence  
- Prevents Windows 11 upgrade blocks and TPM warnings  
- Compatible with clean installs and in-place upgrades  

---

## 🎥 Showcase

Watch the bypass in action here:  
https://youtu.be/SlzvZtO9cl4

---

## 🙋‍♂️ Why Use This?

- Your PC lacks TPM 2.0 or Secure Boot support  
- You want to leave TPM **disabled in BIOS** without Windows nagging  
- You’re running Windows 10 and want to avoid TPM-related upgrade restrictions  
- You want to install or upgrade without hardware changes

---

## 🛠️ How to Use

1. Extract files  
2. Run **Spoofer.exe** as Administrator  
3. Wait for confirmation  
4. Restart your PC  
5. Use `tpm.msc` or `tpm-info.exe` to confirm TPM status (will show as missing but bypassed)

> ✅ TPM can remain off in BIOS with no Windows popups.

---

## 🔄 How to Revert

1. Run `restore.bat` as Administrator  
2. Reboot your PC

---

## ⚙️ What It Changes

Creates these registry entries to disable TPM and Secure Boot checks:

```reg
[HKEY_LOCAL_MACHINE\SYSTEM\Setup\LabConfig]
"BypassTPMCheck"=dword:00000001
"BypassSecureBootCheck"=dword:00000001
"BypassRAMCheck"=dword:00000001
