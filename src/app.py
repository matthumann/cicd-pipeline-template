"""Minimal sample application.

Exists only to give the pipeline real code to lint, test, and package. Swap it
for an actual service — the pipeline and branching model are the point of this
template, not the app.
"""
from __future__ import annotations


def add(a: float, b: float) -> float:
    """Return the sum of two numbers."""
    return a + b


def health() -> dict[str, str]:
    """A trivial health check a deploy smoke test could call."""
    return {"status": "ok"}


if __name__ == "__main__":
    print(health())
