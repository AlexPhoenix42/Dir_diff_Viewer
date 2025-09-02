---

# 🗂️ Diff Viewer Script

A flexible Bash utility that compares two files or directories and opens differing content in `vimdiff` for manual inspection. Whether you're reviewing changes between folders or comparing two individual files, this script provides a clean, interactive workflow for developers and sysadmins alike.

---

## 🚀 Features

- 📁 Recursively compares two directories
- 📄 Directly compares two individual files
- 🧠 Filters and opens only files that differ
- 🖥️ Uses `vimdiff` for side-by-side visual inspection
- ⏸️ Pauses between comparisons for manual review
- 🧼 Simple, interactive, and easy to extend

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
3. Run it with two paths (files or directories):
   ```bash
   ./diff_viewer.sh /path/to/dir1 /path/to/dir2
   ./diff_viewer.sh file1.txt file2.txt
   ```

---

## 🧪 Examples

### Compare two directories:
```bash
./diff_viewer.sh ./backup ./live
```

### Compare two files:
```bash
./diff_viewer.sh config_old.yaml config_new.yaml
```

Output:
```
Opening: ./backup/config.yaml <-> ./live/config.yaml
You have: ↓
--------------------------------
Press Enter for next file (or Ctrl+C to stop)...
```

---

## 🛠️ Customization

- Replace `vimdiff` with another diff tool (e.g., `meld`, `code --diff`)
- Add filters to exclude certain file types or directories
- Integrate with version control workflows for pre-commit inspection

---

## 📄 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

## Powered by github.com/AlexPhoenix42 🌈🚀
https://github.com/AlexPhoenix42
