# x-ui
Mendukung panel xray multi-protokol dan multi-pengguna

# Fitur
-Pemantauan status sistem
-Dukungan multi-pengguna dan multi-protokol, operasi visualisasi halaman web
-Protokol yang didukung: vmess, vless, trojan, shadowsocks, dokodemo-door, socks, http
-Dukungan untuk mengonfigurasi lebih banyak konfigurasi transmisi
-Statistik lalu lintas, batasi lalu lintas, batasi waktu kedaluwarsa
-Templat konfigurasi xray yang dapat disesuaikan
-Mendukung panel akses https (bawa nama domain Anda sendiri + sertifikat ssl)
-Item konfigurasi lebih lanjut, lihat panel untuk detailnya

# Instalasi & Tingkatkan
```
bash <(curl -Ls https://raw.githubusercontent.com/vaxilu/x-ui/master/install.sh)
```

## Instalasi & peningkatan manual
1. Pertama-tama unduh paket terkompresi terbaru dari https://github.com/vaxilu/x-ui/releases, umumnya pilih arsitektur `amd64`
2. Kemudian unggah paket terkompresi ke direktori `/root/` server, dan gunakan pengguna `root` untuk masuk ke server

> Jika arsitektur cpu server Anda bukan `amd64`, ganti `amd64` dalam perintah dengan arsitektur lain
```
cd /root/
rm x-ui/ /usr/local/x-ui/ /usr/bin/x-ui -rf
tar zxvf x-ui-linux-amd64.tar.gz
chmod +x x-ui/x-ui x-ui/bin/xray-linux-* x-ui/x-ui.sh
cp x-ui/x-ui.sh /usr/bin/x-ui
cp -f x-ui/x-ui.service /etc/systemd/system/
mv x-ui/ /usr/local/
systemctl daemon-reload
systemctl aktifkan x-ui
systemctl restart x-ui
```

## Instal menggunakan buruh pelabuhan

> Tutorial buruh pelabuhan dan gambar buruh pelabuhan ini disediakan oleh [Chasing66](https://github.com/Chasing66)
1. Instal buruh pelabuhan
``` kulit
curl -fsSL https://get.docker.com | sh
```
2. Instal x-ui
``` kulit
mkdir x-ui && cd x-ui
docker run -itd --network=host \
    -v $PWD/db/:/etc/x-ui/ \
    -v $PWD/cert/:/root/cert/ \
    --name x-ui --restart=kecuali dihentikan \
    enwaiax/x-ui:terbaru
```
>Bangun gambar Anda sendiri
``` kulit
buruh pelabuhan membangun -t x-ui.
```
## Sistem Saran
-CentOS 7+
-Ubuntu 16+
-Debian 8+

# masalah umum

## Bermigrasi dari v2-ui
Pertama-tama instal x-ui versi terbaru di server tempat v2-ui diinstal, lalu gunakan perintah berikut untuk bermigrasi, yang akan memigrasikan `semua data akun masuk` dari mesin v2-ui ke x-ui, ` pengaturan panel dan nama pengguna dan kata sandi Tidak akan bermigrasi`
> Setelah migrasi berhasil, silakan `close v2-ui` dan `restart x-ui`, jika tidak, masuknya v2-ui dan masuknya x-ui akan menyebabkan `port conflict`
```
x-ui v2-ui
```
## masalah selesai
Semua jenis masalah Xiaobai melihat tekanan darah tinggi

## Pengamat bintang dari waktu ke waktu

[![Pengamati bintang dari waktu ke waktu](https://starchart.cc/vaxilu/x-ui.svg)](https://starchart.cc/vaxilu/x-ui)