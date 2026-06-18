from src.app import add, health


def test_add():
    assert add(2, 3) == 5
    assert add(-1, 1) == 0


def test_health():
    assert health() == {"status": "ok"}
