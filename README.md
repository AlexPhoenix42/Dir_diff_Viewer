---

# 🗂️ Diff Viewer Script

A lightweight Bash utility that compares two directories and opens each pair of differing files in `vimdiff` for manual inspection. Perfect for developers who want a clean, interactive way to review changes between file trees—whether you're syncing backups, reviewing code changes, or auditing deployments.

---

## 🚀 Features

- Recursively compares two directories
- Filters and opens only files that differ
- Uses `vimdiff` for side-by-side visual inspection
- Pauses between comparisons for manual review
- Simple, interactive workflow

---

## 📦 Requirements

- Bash (Linux/macOS)
- `diff`, `grep`, and `vimdiff` utilities (typically pre-installed)
- A terminal that supports interactive input/output

---

## ⚙️ Usage

1. Save the script as `diff_viewer.sh` (or any name you prefer).
2. Make it executable:
   ```bash
   chmod +x diff_viewer.sh
   ```
3. Run it with two directory paths:
   ```bash
   ./diff_viewer.sh /path/to/dir1 /path/to/dir2
   ```

---

## 🧪 Example

```bash
./diff_viewer.sh ./backup ./live
```

Output:

```
Opening: ./backup/config.yaml <-> ./live/config.yaml
--------------------------------
Press Enter for next file (or Ctrl+C to stop)...
```

---

## 🛠️ Customization

- Replace `vimdiff` with another diff tool if preferred (e.g., `meld`, `code --diff`)
- Add filters to exclude certain file types or directories
- Integrate with version control workflows for pre-commit inspection

---

## 📄 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

## Powered by github.com/AlexPhoenix42 🌈🚀
https://github.com/AlexPhoenix42
