# LaTeX Report Template

This project is a ready-made starting point for writing a report in LaTeX. You do not need to understand all the files to get started: follow one of the setup options below, then edit the example text and details.

## Choose how to use the template

- **Want the easiest setup?** Use [Overleaf](#option-1-overleaf-no-installation).
- **Want to work on your Windows computer?** Follow [Option 2: Windows](#option-2-windows-work-on-your-computer).

## Option 1: Overleaf (no installation)

Overleaf is a website where you can edit and compile LaTeX documents. You do not need to install LaTeX or an editor on your computer.

1. Download this project from GitHub: open the green **Code** button and choose **Download ZIP**.
2. Open [Overleaf](https://www.overleaf.com/) and sign in or create an account.
3. Choose **New Project**, then **Upload Project**.
4. Select the ZIP file you downloaded. Do not unzip it first.
5. In Overleaf, open `00_main.tex` and choose it as the **Main document** if Overleaf has not selected it automatically.
6. Click **Recompile**. The finished document will appear as a PDF.

If compilation reports a missing package, Overleaf usually installs the required packages automatically. If it does not, try compiling again or use the Windows option below.

## Option 2: Windows (work on your computer)

You need two programs:

1. **MiKTeX** — provides LaTeX and the tools needed to build the report.
2. **Visual Studio Code** — lets you edit the files. You also need its **LaTeX Workshop** extension.

### 1. Install MiKTeX

1. Go to [miktex.org/download](https://miktex.org/download) and download the Windows installer.
2. Run the downloaded installer. If Windows asks whether to allow it to make changes, choose **Yes**.
3. Follow the installation steps. When asked whether MiKTeX should install missing packages automatically, choose **Yes**.
4. After installation, open **MiKTeX Console** from the Windows Start menu. Choose **Check for updates** and install any available updates.

The template uses bibliography and glossary tools as well as LaTeX packages. MiKTeX's automatic package installation should provide what is needed; approve any package-installation prompts the first time you build the document.

### 2. Download the template

1. Open this project's GitHub page: <https://github.com/mattiaAsto/LaTex-template>.
2. Click the green **Code** button, then choose **Download ZIP**.
3. In File Explorer, find the downloaded ZIP file (usually in **Downloads**).
4. Right-click it and choose **Extract All...**, then click **Extract**.
5. Move the extracted `LaTex-template` folder somewhere easy to find, such as **Documents**. Keep the files together in that folder; do not move individual files out of it.

### 3. Install Visual Studio Code and its LaTeX extension

1. Download and install Visual Studio Code from [code.visualstudio.com](https://code.visualstudio.com/).
2. Open Visual Studio Code.
3. Open the **Extensions** view using the square icon on the left (or press **Ctrl+Shift+X**).
4. Search for **LaTeX Workshop** and install the extension published by **James Yu**.

### 4. Open and build the report

1. In Visual Studio Code, choose **File > Open Folder...**.
2. Select the `LaTex-template` folder you extracted, then choose **Select Folder**.
3. In the file list on the left, click `00_main.tex`.
4. Build the report using **Ctrl+Alt+B**. If prompted to choose a build recipe, select **Full build**.
5. If MiKTeX asks to install a package, allow it. The first build can take a few minutes.
6. To view the result, click **View LaTeX PDF** in the LaTeX Workshop panel or use its PDF preview button. The generated PDF is also saved as `00_main.pdf` in the project folder.

If the build fails, check that MiKTeX and LaTeX Workshop are installed, approve any package-installation prompts, and make sure you opened the whole `LaTex-template` folder (not just one file).

## What to edit

You can change the example report without changing the layout:

- **Title, author, institute, and other report details:** edit the values near the top of `content/00_setup.sty`.
- **Title-page layout or images:** edit `content/01_title.tex` or replace the images in `pictures/default/` with your own images. Keep the same filenames, or update the paths in the title-page file.
- **Abstract and contact details:** edit `content/02_abstract.tex`.
- **Main report text:** edit `01_intro.tex`. You can add sections and paragraphs in this file.
- **References:** edit `content/03_myBib.bib`. Keep each reference's entry key (the text immediately after `@book`, `@article`, etc.) so citations referring to it continue to work.
- **Acronyms and glossary entries:** edit `content/04_acronyms.tex` and `content/05_glossary.tex`.

The main file is `00_main.tex`. It brings the other files together; most people do not need to change it to write a report.

## Project files

- `00_main.tex` — main document and the file to build.
- `01_intro.tex` — example main-text section.
- `content/` — title-page details, abstract, formatting, references, acronyms, and glossary.
- `pictures/default/` — images used on the title page and in the header.
- `build/` — temporary files created during compilation. You normally do not need to edit these.
- `00_main.pdf` — compiled report; regenerated when you build the project.

## License

MIT. Author: [Mattia Astori](https://github.com/mattiaAsto).
