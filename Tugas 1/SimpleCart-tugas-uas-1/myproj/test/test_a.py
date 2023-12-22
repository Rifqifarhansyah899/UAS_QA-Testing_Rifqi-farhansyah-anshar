import pytest
from app.test_models import create_factory

# Use pytest fixtures to set up and tear down the database
@pytest.fixture
def setup_database():
    create_factory()  # Call your function to set up the database
    yield  # This is where the testing happens
    # If you need teardown, add it here

def test_your_feature(setup_database):
    # Your test code goes here
    # The setup_database fixture will be called before this test
    assert True
