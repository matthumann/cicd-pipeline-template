# Contributing

This repo demonstrates a branch-aware CI/CD workflow. The contribution rules
*are* the demonstration — follow them and the pipeline does the rest.

## 1. Pick the right branch type

| Doing this | Branch from | Name it | Merge into |
|---|---|---|---|
| Building a feature | `dev` | `feature/<ticket>-desc` | `dev` |
| Fixing a non-urgent bug | `dev` | `bugfix/<ticket>-desc` | `dev` |
| Fixing a production emergency | `main` | `hotfix/<ticket>-desc` | `main` (then back-merge `dev`) |
| Cutting a release | `dev` | `release/<version>` | `main` |

Full detail: [docs/branching-strategy.md](docs/branching-strategy.md).

## 2. Commit messages

Conventional Commits — the type prefix should match the branch type:

```
feat: add CSV export endpoint
fix: handle empty cart in checkout
hotfix: restore login after token rollover
```

## 3. Open a Merge/Pull Request

- Target `dev` (or `main` for hotfix/release).
- Fill out the [MR template](.gitlab/merge_request_templates/Default.md).
- The pipeline runs lint → tests → build automatically; keep it green.
- Get review approval (two reviewers for `main`). Direct pushes to `main`/`dev`
  are blocked.

## 4. Run checks locally before pushing

```bash
pip install -r requirements.txt ruff pytest pytest-cov
ruff check src tests
pytest --cov=src
```
