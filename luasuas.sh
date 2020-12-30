#!/bin/bash

echo "Penghitung Luas dan Keliling Bangun Datar"

echo "Pilihan Bangun Datar:"
echo "1. Persegi"
echo "2. Persegi Panjang"
echo "3. Segitiga"
echo "4. Layang-Layang"
echo "5. Jajar Genjang"
echo "6. Trapesium"
echo "7. Lingkaran"

echo "Pilih:"
read pilih

echo "Apa yang akan dihitung?"
echo "1. Luas"
echo "2. Keliling"
read pilih1

if [ $pilih1 == 1 ]
then

	case "$pilih" in

		"1")

			echo "Panjang Sisi:"
			read sisi
			let luas=$sisi*$sisi;
			echo "Luas: $luas"
			;;
		"2")
			echo "Panjang:"
			read panjang
			echo "Lebar:"
			read lebar
			
			let luas=$panjang*$lebar;
			echo "Luas: $luas"
			;;
		"3")
			echo "Alas:"
			read alas
			echo "Tinggi"
			read tinggi
			
			let luas=0.5*$alas*$tinggi
			echo "Luas: $luas"
			;;
		"4")
			echo "Diagonal 1:"
			read d1
			echo "Diagonal 2:"
			read d2
			
			let luas=0.5*$d1*$d2
			echo "Luas: $luas"
			;;

		"5")
			echo "Alas:"
			read alas
			echo "Tinggi:"
			read tinggi
			
			let luas=$d1*$d2
			echo "Luas: $luas"
			;;
		"6")
			echo "Alas:"
			read alas
			echo "Sisi Sejajar:"
			read sisisejajar
			echo "Tinggi:"
			read tinggi
			
			let luas=0.5*[ $alas+$sisisejajar ]*$tinggi
			echo "Luas: $luas"
			;;

		"7")
			phi=3.14;
			echo "Jari-Jari:"
			read jarijari
			
			let luas=$phi*$jarijari*$jarijari
			echo "Luas: $luas"
			;;
	esac
else
	case "$pilih" in
		"1")
			echo "Sisi:"
			read sisi
			
			let keliling=4*$sisi
			echo "Keliling: $keliling"
			;;

		"2")
			echo "Panjang:"
			read panjang
			echo "Lebar:"
			read lebar
			
			let keliling=2*[ $panjang+$lebar ] 
			echo "Keliling: $keliling"
			;;

		"3")
			echo "Sisi A:"
			read a
			echo "Sisi B:"
			read b
			echo "Sisi C:"
			read c
			
			let keliling=$a+$b+$c
			echo "Keliling: $keliling"
			;;

		"4")
			echo "Sisi A:"
			read a
			echo "Sisi B:"
			read b
			
			let keliling=2*$a*$b
			echo "Keliling: $keliling"
			;;

		"5")
			echo "Sisi A:"
			read a
			echo "Sisi B:"
			read b

			let keliling=2*$a*$b
			echo "Keliling: $keliling"
			;;

		"6")
			echo "Sisi A:"
			read a
			echo "Sisi B:"
			read b
			echo "Sisi C:"
			read c
			echo "Sisi D:"
			read d

			let keliling=$a+$b+$c+$d
			echo "Keliling: $keliling"
			;;

		"7")
			phi=3.14
			echo "Diameter:"
			read d
			
			let keliling=$phi*$d
			echo "Keliling: $keliling"
			;;
esac

fi
