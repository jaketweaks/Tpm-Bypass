# 🛡️ TPM Bypass for Windows 11

This tool bypasses Windows 11's TPM 2.0 and Secure Boot checks using **safe, software-only methods** — no BIOS modding or external hardware required.

> ✅ No BIOS flashing  
> ✅ No hardware programmers  
> ✅ 100% software-based and reversible  

---

## 📋 Requirements

- Windows 10 or 11
- Administrator privileges
- [Spoofer.exe]
- (Optional) [tpm-info.exe] to verify TPM status

---

## 💡 What It Does

- Spoofs TPM presence using registry-based bypass and memory patching
- Enables Windows 11 upgrades and clean installs on unsupported hardware
- Bypasses Secure Boot & RAM checks (optional)

---

## ⚙️ How It Works

This tool applies Microsoft's own documented registry bypass (LabConfig) plus an optional in-memory spoof for additional compatibility.

### 🧠 Registry Tweak Added:
```reg
[HKEY_LOCAL_MACHINE\SYSTEM\Setup\LabConfig]
"BypassTPMCheck"=dword:00000001
"BypassSecureBootCheck"=dword:00000001
"BypassRAMCheck"=dword:00000001
