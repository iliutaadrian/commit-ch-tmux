## GIT Commit Message Builder for TMUX
Simplify your git commit process with the Git Commit Message Builder for TMUX. This plugin provides an interactive interface within tmux to help you follow commit conventions, adding semantic meaning to your git history.

## Motivation
Commit conventions, including types, scopes, and breaking changes, enhance the readability and usefulness of your git history. By adhering to these conventions, you enable tools to generate automated changelogs, perform version bumps, and facilitate filtering for test harnesses.

This was inspired by: [Commitlint](https://commitlint.js.org/#/).

This plugin supports the most common commit conventions, following the pattern:

```bash

type(scope?): subject
body?
footer?

```

It is built with shell scripting and tmux, providing a lightweight and efficient solution for improving your commit messages.

## Features
- Semantic Commit Conventions: Easily choose commit types, scopes, and provide meaningful commit subjects.
- Interactive Interface: Trigger the selector with <C-g> within tmux for a seamless experience.


## Getting Started
### Clone the repository to your preferred location:

```bash

git clone https://github.com/yourusername/commit-ch-tmux.git ~/.tmux/plugins/commit-ch-tmux

```

### TPM
If you'd prefer, you can use the Tmux Plugin Manager (TPM) instead of copying the snippet. When using TPM, add the following lines to your ~/.tmux.conf:

```bash

set -g @plugin 'iliutaadrian/commit-ch-tmux'
run '~/.tmux/plugins/tpm/tpm'

```

## Usage
Press <C-g> within tmux to open the selector.
Choose the appropriate commit type, scope, and provide a meaningful subject.
Optionally add a body or footer for additional details.
Press Enter to complete the commit message or Ctrl-M to continue with the message.

## Screenshots


## Contributions
Feel free to fork and contribute to this project. If you encounter any issues or have suggestions for improvement, please open an issue on the GitHub repository.

## License
This plugin is open-source and available under the MIT License.
