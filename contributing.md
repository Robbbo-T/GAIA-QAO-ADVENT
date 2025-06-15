# Contributing to GAIA-QAO-AdVent

Welcome, and thank you for your interest in contributing to the **GAIA-QAO-AdVent** aerospace digital venture platform! We value all forms of contribution—code, documentation, bug reports, design, and discussion—and strive to maintain a professional, collaborative environment.

---

## Table of Contents

- [Code of Conduct](#code-of-conduct)
- [How to Contribute](#how-to-contribute)
- [Project Structure](#project-structure)
- [Development Environment](#development-environment)
- [Coding Guidelines](#coding-guidelines)
- [Pull Request Process](#pull-request-process)
- [Commit Message Convention](#commit-message-convention)
- [Reporting Bugs and Issues](#reporting-bugs-and-issues)
- [Security Policy](#security-policy)
- [Acknowledgments](#acknowledgments)

---

## Code of Conduct

By participating in this project, you agree to adhere to the [GAIA-QAO Code of Conduct](CODE_OF_CONDUCT.md). Be respectful, collaborative, and supportive.

---

## How to Contribute

1. **Fork the repository** and clone it to your local machine.
2. **Create a new branch** for your feature or bugfix:
   ```bash
   git checkout -b feature/your-feature-name
   ```
3. **Develop your changes** and add tests where applicable.
4. **Run tests and linters** before submitting:
   ```bash
   npm run test --workspaces
   npm run lint --workspaces
   ```
5. **Push to your fork** and submit a pull request (PR) against `main` or the appropriate feature branch.
6. **Describe your changes** clearly in the PR. Reference any related issues.

---

## Project Structure

See [directory structure documentation](./README.md) and the included `text-file` for a comprehensive guide.

- `dashboard/` — Mission control React UI
- `telemetry/` — Data streaming and analytics (Node.js, Kafka, InfluxDB)
- `quantum/` — Quantum computing modules (Python, SDKs, QPU drivers)
- `src/` — Core digital twin logic (Python)
- `wasm/` — WebAssembly modules (AssemblyScript, Rust, or C++)
- `certification/` — DO-178C/DO-330 compliance artifacts
- `pipelines/` — CI/CD and automation
- `docs/` — Technical and regulatory documentation

---

## Development Environment

- **Node.js:** v18.x or newer
- **Python:** 3.9 or newer
- **Docker:** For services (Kafka, InfluxDB, etc.)
- **Recommended:** VSCode with appropriate extensions, or JetBrains IDEs

Install all dependencies:
```bash
npm install
./scripts/setup.sh
```

Start the platform in development mode:
```bash
./start.sh
```

---

## Coding Guidelines

- **Languages:** TypeScript (dashboard/wasm), Python (src/quantum), Node.js (telemetry), AssemblyScript/Rust/C++ (wasm)
- **Style:** Use [Prettier](https://prettier.io/) and [ESLint](https://eslint.org/) for JS/TS; [black](https://black.readthedocs.io/) and [flake8](https://flake8.pycqa.org/) for Python
- **Documentation:** Public APIs and modules must be documented with [Typedoc](https://typedoc.org/) (TS) or [Sphinx](https://www.sphinx-doc.org/) (Python)
- **Testing:** All features must include relevant unit/integration tests.
- **Safety-critical code:** Follow DO-178C/DO-330 principles where applicable. See `/certification/` for templates and checklists.

---

## Pull Request Process

- Ensure your branch is up-to-date with `main`.
- All PRs require at least one review and must pass CI/CD checks.
- Reference related issues or documentation in the PR description.
- For features impacting certification, update `/certification/traceability/`.

---

## Commit Message Convention

Follow [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/):

```
feat(telemetry): add quantum sensor streaming
fix(dashboard): correct flight path rendering bug
docs(quantum): update QPU driver documentation
```

---

## Reporting Bugs and Issues

- [Open an Issue](https://github.com/gaia-qao/GAIA-QAO-AdVent/issues) with clear steps to reproduce, expected vs. actual behavior, and logs if available.
- For security vulnerabilities, **do not use the public issue tracker**—see [SECURITY.md](SECURITY.md).

---

## Security Policy

Read our [SECURITY.md](SECURITY.md) for responsible disclosure and best practices.

---

## Acknowledgments

We appreciate all contributions—code, documentation, bug reports, or ideas. All contributors will be recognized in [RELEASE NOTES](./RELEASE.md) and may be eligible for project acknowledgments.

---

**Let’s build the future of aerospace systems, together!**
