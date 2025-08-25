# notes

My class notes and other markdown/LATEX documents.

All final pdfs are built and published by GitHub Actions and are available at [notes.rmoseley.dev](https://notes.rmoseley.dev).

## Building Locally
**Requirements**:
- [`pandoc-cli`](https://archlinux.org/packages/extra/x86_64/pandoc-cli/) (or your favorite pdf-ready pandoc install)
- [`circuitikz`](https://github.com/circuitikz/circuitikz) (included in `pandoc-cli`)
- [`texlive`](https://archlinux.org/groups/any/texlive/)
- [`zathura`](https://archlinux.org/packages/extra/x86_64/zathura/) (needed for the local generation script)

**Suggestions**:
- [`visual-studio-code-bin` (AUR)](https://aur.archlinux.org/packages/visual-studio-code-bin/)
- [Task Runner for VSCode](https://marketplace.visualstudio.com/items?itemName=SanaAjani.taskrunnercode)

### From command line
- navigate to the root directory of the project
- `./generate.sh <name of directory to generate>`
- the pdf will be generated (sans timestamp)
- the pdf will automatically be opened in zathura
- when zathura is closed, all temp files will be cleaned up

### With VSCode task
- open the project in VSCode
- open a file in one of the directories
- in the Explorer, under "Task Runner", select "Generate Current PDF"
- the pdf will be generated and opened with zathura
- when zathura is closed, all temp files will be cleaned up

## CircuiTikZ Designer
There is also a VSCode task to open a CircuiTikZ designer window in the project. Click the task in the "Task Runner" window to open the editor. If it fails and opens the VSCode terminal, close the terminal and try again.

Once you have designed a circuit, select the `<>` icon in the top bar and copy the output. Paste it into a markdown file, probably within `\begin{center}`/`\end{center}` tags. Make sure the relevant `000-metadata.md` file includes the following:
```YAML
header-includes:
    - \usepackage{circuitikz}
```
