*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BASE_URL}    http://localhost/e-commerce-bread/index.php
${BROWSER}    Chrome

*** Test Cases ***

# Test Case 1: Membuka halaman utama
testcase-1 Membuka Halaman Utama
    Open Browser    ${BASE_URL}    ${BROWSER}
    Maximize Browser Window

# Test Case 2: Menguji elemen header
testcase-2 Menguji Elemen Header
    Page Should Contain Element    xpath://img[@alt='RDP-Cake Bakery']
    Page Should Contain Element    xpath://a[@id='MenuUtama']
    Page Should Contain Element    xpath://a[@id='Produk']
    Page Should Contain Element    xpath://a[@id='KeranjangBelanja']
    Page Should Contain Element    xpath://a[@id='AkunSaya']

# Test Case 3: Menguji menu produk
testcase-3 Menguji Menu Produk
    Click Element    xpath://a[@id='Produk']
    Page Should Contain Element    xpath://h1[@class='page-title']
    Page Should Contain Element    xpath://div[@class='product-list']

# Test Case 4: Menguji gambar produk
testcase-4 Menguji Gambar Produk
    Click Element    xpath://a[@href='/produk/roti-coklat']
    Image Should Be Visible    xpath://img[@alt='Roti Cokelat']

# Test Case 5: Menguji nama produk
testcase-5 Menguji Nama Produk
    Text Should Be    xpath://h1[@class='product-name']    Roti Cokelat

# Test Case 6: Menguji harga produk
testcase-6 Menguji Harga Produk
    Text Should Be    xpath://div[@class='product-price']    IDR 10.000

# Test Case 7: Menguji deskripsi produk
testcase-7 Menguji Deskripsi Produk
    Text Should Be    xpath://div[@class='product-description']    Roti cokelat yang enak dan lembut

# Test Case 8: Menguji menu keranjang belanja
testcase-8 Menguji Menu Keranjang Belanja
    Click Element    xpath://a[@id='KeranjangBelanja']
    Page Should Contain Element    xpath://h1[@class='page-title']

# Test Case 9: Menguji menu akun saya
testcase-9 Menguji Menu Akun Saya
    Click Element    xpath://a[@id='AkunSaya']
    Page Should Contain Element    xpath://h1[@class='page-title']

# Test Case 10: Menguji elemen footer
testcase-10 Menguji Elemen Footer
    Click Element    xpath://a[@href='/kontak']
    Page Should Contain Element    xpath://h1[@class='page-title']   Kontak Kami
    Click Element    xpath://a[@href='/tentang']
    Page Should Contain Element    xpath://h1[@class='page-title']   Tentang Kami
