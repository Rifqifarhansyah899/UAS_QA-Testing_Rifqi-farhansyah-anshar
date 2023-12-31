import pytest
from app import create_app
from .test_models import create_factory

create_factory()

@pytest.fixture
def app():
    app = create_app()
    return app

@pytest.fixture
def client(app):
    return app.test_client()
