import requests

def test_upload_limit():
    r = requests.post("http://localhost:8082/upload", files={})
    assert r.status_code == 400
    assert "No files uploaded" in r.text

def test_query_missing_input():
    r = requests.post("http://localhost:8082/query", json={})
    assert r.status_code == 400
