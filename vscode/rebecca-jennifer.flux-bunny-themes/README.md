# Lagomorphic Constructs Theme Pack

Color brings me joy, and integrating color into my development environment brings an extra level of satisfaction to coding.

This theme pack includes both light and dark variants. It also provides a template file for use with my [color-scheme-exporter](https://github.com/rebeccajennifer/color-scheme-exporter) script, which lets you define a set of 16 ANSI colors and automatically generate a cohesive theme for VS Code and a variety of terminal programs.

---

## 🎨 Included Themes

- **Flux Bunny Dark**
- **Flux Bunny Lite**
- **flux-bunny-template.json** (template used for automated generation)

The template file is not intended for direct installation — it serves as a base that the exporter fills with derived color values.

---

## 📦 Installing the Themes

### Via VSIX (local install)

1. Open the Command Palette:
   `Ctrl+Shift+P` (Windows/Linux) or `Cmd+Shift+P` (macOS)
2. Run: **Extensions: Install from VSIX**
3. Select the `.vsix` file for this theme pack
4. Activate via: **Preferences → Color Theme**

---

## 📁 Project Structure

```
vscode/
  flux-bunny-dark.json
  flux-bunny-lite.json
  flux-bunny-template.json
  package.json
```

---

## 💡 Design Notes

The Flux Bunny themes emphasize:

- Clear syntax highlighting with deliberate color contrast
- ANSI ➜ semantic color mapping
- Comfortable readability for extended sessions
- A consistent aesthetic across tools when paired with the exporter

---

## 🚧 Future Improvements

Planned additions may include:

- Additional theme variants
- More terminal output formats
- Marketplace publishing
- Expanded documentation of the generation pipeline

---

## 📄 License

*(Insert license here — e.g. MIT)*
