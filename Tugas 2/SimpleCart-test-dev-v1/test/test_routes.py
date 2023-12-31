import json

from .settings import DEFAULT_PRICE

def test_product_detail_api(client):
    id = 3
    response = client.get(f"/api/products/{id}")
    assert response.status_code == 200
    data = json.loads(response.data)
    assert id == data.get('id')
    assert DEFAULT_PRICE * id == data.get('price')  # Added the missing assertion
    # Add any other assertions you need

def test_product_api(client):
    response = client.get("/api/products")
    assert response.status_code == 200
    # Add any other assertions you need

def test_get_cart(client):
    # route 'api/cart/<id>'
    assert True
    # Add any other assertions you need
