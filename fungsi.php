<?php

// function answer($kode){
//     if($kode=='m1'){
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='question.php?kode=m2'>Ya</a>";
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='question.php?kode=m14'>Tidak</a>";
//     }
//     if($kode=='m2'){
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='question.php?kode=m3-a'>Ya</a>";
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='question.php?kode=m3-b'>Tidak</a>";
//     }


//     if($kode=='m3-a'){
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='question.php?kode=m4-a'>Ya</a>";
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='question.php?kode=m8-a'>Tidak</a>";
//     }
//     if($kode=='m4-a'){
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='question.php?kode=m5-a'>Ya</a>";
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='solusi.php?kode=s12'>Tidak</a>";
//     }
//     if($kode=='m5-a'){
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='question.php?kode=m6-a'>Ya</a>";
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='question.php?kode=m7-a'>Tidak</a>";
//     }
//     if($kode=='m6-a'){
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='solusi.php?kode=s1'>Ya</a>";
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='solusi.php?kode=s2'>Tidak</a>";
//     }
//     if($kode=='m7-a'){
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='solusi.php?kode=s3'>Ya</a>";
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='solusi.php?kode=s4'>Tidak</a>";
//     }    
//     if($kode=='m8-a'){
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='question.php?kode=m9-a'>Ya</a>";
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='question.php?kode=m10-a'>Tidak</a>";
//     }
//     if($kode=='m9-a'){
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='solusi.php?kode=s5'>Ya</a>";
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='solusi.php?kode=s6'>Tidak</a>";
//     }
//     if($kode=='m10-a'){
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='question.php?kode=m11-a'>Ya</a>";
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='question.php?kode=m12-a'>Tidak</a>";
//     }
//     if($kode=='m11-a'){
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='solusi.php?kode=s7'>Ya</a>";
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='solusi.php?kode=s8'>Tidak</a>";
//     }
//     if($kode=='m12-a'){
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='solusi.php?kode=s9'>Ya</a>";
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='question.php?kode=m13-a'>Tidak</a>";
//     }
//     if($kode=='m13-a'){
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='solusi.php?kode=s10'>Ya</a>";
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='solusi.php?kode=s11'>Tidak</a>";
//     }



//     if($kode=='m3-b'){
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='question.php?kode=m4-b'>Ya</a>";
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='question.php?kode=m8-b'>Tidak</a>";
//     }
//     if($kode=='m4-b'){
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='question.php?kode=m5-b'>Ya</a>";
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='solusi.php?kode=s24'>Tidak</a>";
//     }
//     if($kode=='m5-b'){
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='question.php?kode=m6-b'>Ya</a>";
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='question.php?kode=m7-b'>Tidak</a>";
//     }
//     if($kode=='m6-b'){
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='solusi.php?kode=s13'>Ya</a>";
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='solusi.php?kode=s14'>Tidak</a>";
//     }
//     if($kode=='m7-b'){
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='solusi.php?kode=s15'>Ya</a>";
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='solusi.php?kode=s16'>Tidak</a>";
//     }    
//     if($kode=='m8-b'){
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='question.php?kode=m9-b'>Ya</a>";
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='question.php?kode=m10-b'>Tidak</a>";
//     }
//     if($kode=='m9-b'){
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='solusi.php?kode=s17'>Ya</a>";
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='solusi.php?kode=s18'>Tidak</a>";
//     }
//     if($kode=='m10-b'){
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='question.php?kode=m11-b'>Ya</a>";
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='question.php?kode=m12-b'>Tidak</a>";
//     }
//     if($kode=='m11-b'){
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='solusi.php?kode=s19'>Ya</a>";
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='solusi.php?kode=s20'>Tidak</a>";
//     }
//     if($kode=='m12-b'){
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='solusi.php?kode=s21'>Ya</a>";
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='question.php?kode=m13-b'>Tidak</a>";
//     }
//     if($kode=='m13-b'){
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='solusi.php?kode=s22'>Ya</a>";
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='solusi.php?kode=s23'>Tidak</a>";
//     }


//     if($kode=='m14'){
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='question.php?kode=m15'>Ya</a>";
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='question.php?kode=m16'>Tidak</a>";
//     }
//     if($kode=='m15'){
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='solusi.php?kode=s25'>Ya</a>";
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='solusi.php?kode=s26'>Tidak</a>";
//     }    
//     if($kode=='m16'){
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='question.php?kode=m17'>Ya</a>";
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='question.php?kode=m18'>Tidak</a>";
//     }
//     if($kode=='m17'){
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='solusi.php?kode=s27'>Ya</a>";
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='solusi.php?kode=s28'>Tidak</a>";
//     }
//     if($kode=='m18'){
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='question.php?kode=m19'>Ya</a>";
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='solusi.php?kode=s31'>Tidak</a>";
//     }
//     if($kode=='m19'){
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='solusi.php?kode=s29'>Ya</a>";
//         echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='solusi.php?kode=s30'>Tidak</a>";
//     }

// }


function answer($kode){
    if($kode=='m1'){
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='question.php?kode=m2'>Ya</a>";
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='question.php?kode=m14'>Tidak</a>";
    }
    if($kode=='m2'){
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='question.php?kode=m3'>Ya</a>";
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='question.php?kode=m4'>Tidak</a>";
    }

    if($kode=='m3'){
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='question.php?kode=m5'>Ya</a>";
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='question.php?kode=m6'>Tidak</a>";
    }
    if($kode=='m4'){
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='question.php?kode=m7'>Ya</a>";
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='solusi.php?kode=s12'>Tidak</a>";
    }
    if($kode=='m5'){
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='question.php?kode=m8'>Ya</a>";
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='question.php?kode=m9'>Tidak</a>";
    }
    if($kode=='m6'){
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='solusi.php?kode=s1'>Ya</a>";
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='solusi.php?kode=s2'>Tidak</a>";
    }
    if($kode=='m7'){
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='solusi.php?kode=s3'>Ya</a>";
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='solusi.php?kode=s4'>Tidak</a>";
    }    
    if($kode=='m8'){
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='question.php?kode=m10'>Ya</a>";
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='question.php?kode=m11'>Tidak</a>";
    }
    if($kode=='m9'){
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='solusi.php?kode=s5'>Ya</a>";
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='solusi.php?kode=s6'>Tidak</a>";
    }
    if($kode=='m10'){
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='question.php?kode=m12'>Ya</a>";
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='question.php?kode=m13'>Tidak</a>";
    }
    if($kode=='m11'){
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='solusi.php?kode=s7'>Ya</a>";
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='solusi.php?kode=s8'>Tidak</a>";
    }
    if($kode=='m12'){
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='solusi.php?kode=s9'>Ya</a>";
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='question.php?kode=m14'>Tidak</a>";
    }
    if($kode=='m13'){
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='solusi.php?kode=s10'>Ya</a>";
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='solusi.php?kode=s11'>Tidak</a>";
    }
    if($kode=='m14'){
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='question.php?kode=m15'>Ya</a>";
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='question.php?kode=m16'>Tidak</a>";
    }
    if($kode=='m15'){
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='solusi.php?kode=s25'>Ya</a>";
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='solusi.php?kode=s26'>Tidak</a>";
    }    
    if($kode=='m16'){
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='question.php?kode=m17'>Ya</a>";
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='question.php?kode=m18'>Tidak</a>";
    }
    if($kode=='m17'){
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='solusi.php?kode=s27'>Ya</a>";
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='solusi.php?kode=s28'>Tidak</a>";
    }
    if($kode=='m18'){
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='question.php?kode=m19'>Ya</a>";
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='solusi.php?kode=s31'>Tidak</a>";
    }
    if($kode=='m19'){
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='solusi.php?kode=s29'>Ya</a>";
        echo "<a class='btn col-sm-1 mrg btn-lg btn-outline-light' href='solusi.php?kode=s30'>Tidak</a>";
    }
}

function kesimpulan($jurusan){
    include 'koneksi.php';
    $sql = "SELECT * from tb_kesimpulan WHERE solusi='$jurusan' AND status='setuju'";
    $data = mysqli_query($connect,$sql);
    while ($row = mysqli_fetch_assoc($data)) {
        echo '<p>-'.$row['fakta'].'</p>';
    }  
}

// function solusi($kode){    
//     if ($kode=='s1') {
//         $jurusan = "Informatika";
//         kesimpulan($jurusan);        
//     }
//     if ($kode=='s2') {
//         $jurusan = "Sistem Informasi";
//         kesimpulan($jurusan);
//     }
//     if ($kode=='s3') {
//         $jurusan = "Arsitektur";
//         kesimpulan($jurusan);
//     }
//     if ($kode=='s4') {
//         $jurusan = "Desain Produk";
//         kesimpulan($jurusan);
//     }
//     if ($kode=='s5') {
//         $jurusan = "Akuntansi";
//         kesimpulan($jurusan);
//     }
//     if ($kode=='s6') {
//         $jurusan = "Manajemen";
//         kesimpulan($jurusan);
//     }
//     if ($kode=='s7') {
//         $jurusan = "Kedokteran";
//         kesimpulan($jurusan);
//     }
//     if ($kode=='s8') {
//         $jurusan = "Bioteknologi";
//         kesimpulan($jurusan);
//     }
//     if ($kode=='s9') {
//         $jurusan = "Teologi";
//         kesimpulan($jurusan);
//     }
//     if ($kode=='s10') {
//         $jurusan = "Pendidikan Bahasa Inggris";
//         kesimpulan($jurusan);
//     }
//     if ($kode=='s11') {
//         $jurusan = "x-1";
//         kesimpulan($jurusan);
//     }
//      if ($kode=='s12') {
//         $jurusan = "x-2";
//         kesimpulan($jurusan);
//     }
//     if ($kode=='s13') {
//         $jurusan = "Informatika (non IPA)";
//         kesimpulan($jurusan);
//     }
//     if ($kode=='s14') {
//         $jurusan = "Sistem Informasi (non IPA)";
//         kesimpulan($jurusan);
//     }
//     if ($kode=='s15') {
//         $jurusan = "Arsitektur (non IPA)";
//         kesimpulan($jurusan);
//     }
//     if ($kode=='s16') {
//         $jurusan = "Desain Produk (non IPA)";
//         kesimpulan($jurusan);        
//     }
//     if ($kode=='s17') {
//         $jurusan = "Akuntansi (non IPA)";
//         kesimpulan($jurusan);
//     } 
//     if ($kode=='s18') {
//         $jurusan = "Manajemen (non IPA)";
//         kesimpulan($jurusan);
//     }
//     if ($kode=='s19') {
//         $jurusan = "Kedokteran (non IPA)";
//         kesimpulan($jurusan);
//     }
//     if ($kode=='s20') {
//         $jurusan = "Bioteknologi (non IPA)";
//         kesimpulan($jurusan);
//     }
//      if ($kode=='s21') {
//         $jurusan = "Teologi (non IPA)";
//         kesimpulan($jurusan);
//     }
//      if ($kode=='s22') {
//         $jurusan = "Pendidikan Bahasa Inggris (non IPA)";
//         kesimpulan($jurusan);
//     }
//      if ($kode=='s23') {
//         $jurusan = "x-3";
//         kesimpulan($jurusan);
//     }
//      if ($kode=='s24') {
//         $jurusan = "x-4";
//         kesimpulan($jurusan);   
//     }
//      if ($kode=='s25') {
//         $jurusan = "Arsitek (non SMA)";
//         kesimpulan($jurusan);
//     }
//      if ($kode=='s26') {
//         $jurusan = "Desain Produk (non SMA)";
//         kesimpulan($jurusan);
//     }
//      if ($kode=='s27') {
//         $jurusan = "Informatika (non SMA)";
//         kesimpulan($jurusan);
//     }
//      if ($kode=='s28') {
//         $jurusan = "Sistem Informasi (non SMA)";
//         kesimpulan($jurusan);
//     }
//      if ($kode=='s29') {
//         $jurusan = "Akutansi (non SMA)";
//         kesimpulan($jurusan);
//     }
//      if ($kode=='s30') {
//         $jurusan = "Manajemen (non SMA)";
//         kesimpulan($jurusan);
//     }
//      if ($kode=='s31') {
//         $jurusan = "x-5";
//         kesimpulan($jurusan);
//     }
// }


function solusi($kode){    
    if ($kode=='s1') {
        $jurusan = "D3 Teknik Mesin";
        kesimpulan($jurusan);        
    }
    if ($kode=='s2') {
        $jurusan = "D3 Perawatan Alat Berat";
        kesimpulan($jurusan);        
    }
    if ($kode=='s3') {
        $jurusan = "D3 Teknik Otomotif";
        kesimpulan($jurusan);        
    }
    if ($kode=='s4') {
        $jurusan = "D3 Elektronika";
        kesimpulan($jurusan);        
    }
    if ($kode=='s5') {
        $jurusan = "D3 Teknik Konstruksi Sipil";
        kesimpulan($jurusan);        
    }
    if ($kode=='s6') {
        $jurusan = "D3 Teknik Konversi Energi";
        kesimpulan($jurusan);        
    }
    if ($kode=='s7') {
        $jurusan = "D3 Teknik Konversi Energi (PSDKU Kolaka)";
        kesimpulan($jurusan);        
    }
    if ($kode=='s8') {
        $jurusan = "D4 Teknologi Rekayasa Energi Terbarukan";
        kesimpulan($jurusan);        
    }
    if ($kode=='s9') {
        $jurusan = "D4 Teknologi Kimia Industri";
        kesimpulan($jurusan);        
    }
    if ($kode=='s10') {
        $jurusan = "D4 Teknologi Rekayasa Kimia Berkelanjutan";
        kesimpulan($jurusan);        
    }
    if ($kode=='s11') {
        $jurusan = "D4 Teknik Mekatronika";
        kesimpulan($jurusan);        
    }
    if ($kode=='s12') {
        $jurusan = "D4 Teknik Manufaktur";
        kesimpulan($jurusan);        
    }
    if ($kode=='s13') {
        $jurusan = "D3 Analisis Kimia";
        kesimpulan($jurusan);        
    }
    if ($kode=='s14') {
        $jurusan = "D3 Telekomunikasi";
        kesimpulan($jurusan);        
    }
    if ($kode=='s15') {
        $jurusan = "D4 Teknologi Kimia Industri";
        kesimpulan($jurusan);        
    }
    if ($kode=='s16') {
        $jurusan = "D4 Teknologi Rekayasa Kimia Berkelanjutan";
        kesimpulan($jurusan);        
    }
    if ($kode=='s17') {
        $jurusan = "D3 Teknik Listrik";
        kesimpulan($jurusan);        
    }
    if ($kode=='s18') {
        $jurusan = "D4 Teknik Pembangkit Energi";
        kesimpulan($jurusan);        
    }
    if ($kode=='s19') {
        $jurusan = "D4 Teknologi Rekayasa Jaringan Telekomunikasi";
        kesimpulan($jurusan);        
    }
    if ($kode=='s20') {
        $jurusan = "D3 Elektronika";
        kesimpulan($jurusan);        
    }
    if ($kode=='s21') {
        $jurusan = "D4 Teknik Komputer dan Jaringan";
        kesimpulan($jurusan);        
    }
    if ($kode=='s22') {
        $jurusan = "D4 Teknologi Multimedia dan Jaringan";
        kesimpulan($jurusan);        
    }
    if ($kode=='s23') {
        $jurusan = "D4 Teknologi Rekayasa Energi Terbarukan";
        kesimpulan($jurusan);        
    }
    if ($kode=='s24') {
        $jurusan = "D4 Teknik Pembangkit Energi";
        kesimpulan($jurusan);        
    }
    if ($kode=='s25') {
        $jurusan = "D4 Perancangan Bangunan Gedung";
        kesimpulan($jurusan);        
    }
    if ($kode=='s26') {
        $jurusan = "D4 Teknologi Multimedia dan Jaringan";
        kesimpulan($jurusan);        
    }
    if ($kode=='s27') {
        $jurusan = "D4 Jasa Konstruksi";
        kesimpulan($jurusan);        
    }
    if ($kode=='s28') {
        $jurusan = "D4 Perancangan Bangunan Gedung";
        kesimpulan($jurusan);        
    }
    if ($kode=='s29') {
        $jurusan = "D4 Teknik Multimedia dan Jaringan";
        kesimpulan($jurusan);        
    }
    if ($kode=='s30') {
        $jurusan = "D4 Teknologi Rekayasa Jaringan Telekomunikasi";
        kesimpulan($jurusan);        
    }
    if ($kode=='s31') {
        $jurusan = "D3 Teknik Konstruksi Gedung";
        kesimpulan($jurusan);        
    }
    if ($kode=='s32') {
        $jurusan = "D4 Perancangan Bangunan Gedung";
        kesimpulan($jurusan);        
    }
    if ($kode=='s33') {
        $jurusan = "D3 Teknik Konstruksi Gedung";
        kesimpulan($jurusan);        
    }
    if ($kode=='s34') {
        $jurusan = "D4 Jasa Konstruksi";
        kesimpulan($jurusan);        
    }
    if ($kode=='s35') {
        $jurusan = "D4 Teknik Multimedia dan Jaringan";
        kesimpulan($jurusan);        
    }
    if ($kode=='s36') {
        $jurusan = "D4 Perancangan Bangunan Gedung";
        kesimpulan($jurusan);        
    }
    if ($kode=='s37') {
        $jurusan = "D3 Administrasi Bisnis";
        kesimpulan($jurusan);        
    }
    if ($kode=='s38') {
        $jurusan = "D4 Administrasi Bisnis";
        kesimpulan($jurusan);        
    }
    if ($kode=='s39') {
        $jurusan = "D4 Akuntansi Manajerial";
        kesimpulan($jurusan);        
    }
    if ($kode=='s40') {
        $jurusan = "D3 Administrasi Bisnis";
        kesimpulan($jurusan);        
    }
    if ($kode=='s41') {
        $jurusan = "D4 Administrasi Bisnis";
        kesimpulan($jurusan);        
    }
    if ($kode=='s42') {
        $jurusan = "D4 Akuntansi Manajerial";
        kesimpulan($jurusan);        
    }
    if ($kode=='s43') {
        $jurusan = "D3 Administrasi Bisnis";
        kesimpulan($jurusan);        
    }
    if ($kode=='s44') {
        $jurusan = "D4 Administrasi Bisnis";
        kesimpulan($jurusan);        
    }
    if ($kode=='s45') {
        $jurusan = "D3 Akuntansi";
        kesimpulan($jurusan);        
    }
    if ($kode=='s46') {
        $jurusan = "D4 Akuntansi Manajerial";
        kesimpulan($jurusan);        
    }
    if ($kode=='s47') {
        $jurusan = "D3 Administrasi Bisnis";
        kesimpulan($jurusan);        
    }
    if ($kode=='s48') {
        $jurusan = "D4 Administrasi Bisnis";
        kesimpulan($jurusan);        
    }
    if ($kode=='s49') {
        $jurusan = "D3 Administrasi Bisnis";
        kesimpulan($jurusan);        
    }
    if ($kode=='s50') {
        $jurusan = "D4 Akuntansi Manajerial";
        kesimpulan($jurusan);        
    }
    if ($kode=='s51') {
        $jurusan = "D3 Administrasi Bisnis";
        kesimpulan($jurusan);        
    }
    if ($kode=='s52') {
        $jurusan = "D4 Administrasi Bisnis";
        kesimpulan($jurusan);        
    }
    if ($kode=='s53') {
        $jurusan = "D4 Akuntansi Manajerial";
        kesimpulan($jurusan);        
    }
    if ($kode=='s54') {
        $jurusan = "D4 Administrasi Bisnis";
        kesimpulan($jurusan);        
    }
    if ($kode=='s55') {
        $jurusan = "D3 Administrasi Bisnis";
        kesimpulan($jurusan);        
    }
    if ($kode=='s56') {
        $jurusan = "D4 Administrasi Bisnis";
        kesimpulan($jurusan);        
    }
    if ($kode=='s57') {
        $jurusan = "D4 Administrasi Bisnis";
        kesimpulan($jurusan);        
    }
    if ($kode=='s58') {
        $jurusan = "D4 Akuntansi Manajerial";
        kesimpulan($jurusan);        
    }
    if ($kode=='s59') {
        $jurusan = "D3 Akuntansi";
        kesimpulan($jurusan);        
    }
    if ($kode=='s60') {
        $jurusan = "D4 Akuntansi Manajerial";
        kesimpulan($jurusan);        
    }
    if ($kode=='s61') {
        $jurusan = "D3 Akuntansi";
        kesimpulan($jurusan);        
    }
    if ($kode=='s62') {
        $jurusan = "D4 Akuntansi Manajerial";
        kesimpulan($jurusan);        
    }
    if ($kode=='s63') {
        $jurusan = "D3 Akuntansi";
        kesimpulan($jurusan);        
    }
    if ($kode=='s64') {
        $jurusan = "D4 Akuntansi Manajerial";
        kesimpulan($jurusan);        
    }
    if ($kode=='s65') {
        $jurusan = "D3 Administrasi Bisnis";
        kesimpulan($jurusan);        
    }
    if ($kode=='s66') {
        $jurusan = "D4 Administrasi Bisnis";
        kesimpulan($jurusan);        
    }
    if ($kode=='s67') {
        $jurusan = "D3 Akuntansi";
        kesimpulan($jurusan);        
    }
    if ($kode=='s68') {
        $jurusan = "D4 Akuntansi Manajerial";
        kesimpulan($jurusan);        
    }
    if ($kode=='s69') {
        $jurusan = "D3 Akuntansi";
        kesimpulan($jurusan);        
    }
    if ($kode=='s70') {
        $jurusan = "D4 Administrasi Bisnis";
        kesimpulan($jurusan);        
    }
    if ($kode=='s71') {
        $jurusan = "D3 Administrasi Bisnis";
        kesimpulan($jurusan);        
    }
    if ($kode=='s72') {
        $jurusan = "D4 Akuntansi Manajerial";
        kesimpulan($jurusan);        
    }
}