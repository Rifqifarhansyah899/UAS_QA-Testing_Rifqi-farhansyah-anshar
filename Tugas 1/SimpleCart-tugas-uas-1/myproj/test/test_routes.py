import json
from .settings import DEFAULT_PRICE

def test_product_detail_api(client):
    id = 3
    response = client.get(f"/api/products/{id}")
    assert response.status_code == 200
    data = json.loads(response.data)
    assert id == data.get('id')
    assert DEFAULT_PRICE * id == data.get('calculated_price')

def test_product_api(client):
    response = client.get("/api/products")
    assert response.status_code == 200

# Tugas 1 UAS
def test_post_cart(client):
    url = "/api/cart"
    data = {
        "coupon_code": "rifqi farhansyah anshar",
        "shipping_fee": 3,
        "cart_items": [
            {"product_id": 3, "qty": 3}
        ]
    }
    response = client.post(url, json=data)
    assert response.ok
    assert "data" in response.json
