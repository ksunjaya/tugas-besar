<?php
require_once "services/mySQLDB.php";
require_once "reservasiController.php";

class TransaksiController{
    protected $db;

    public function __construct(){
        $this->db = new MySQLDB("localhost", "root", "", "fun_resort");
        date_default_timezone_set('Asia/Jakarta');
    }

    //ini kalau manggilnya dari method POST
    public function _POST_AddTransaksi($isJSON = false){
        $id_transaksi = $this->generateUniqueID();
        $post = json_decode(file_get_contents('php://input'), true);
        $id_reservasi = $post["kode_reservasi"];
        $tanggal = date("ymd");
        $total_harga = $post["harga"];

        if($isJSON) return json_encode($this->addTransaksi($id_transaksi, $id_reservasi, $tanggal, $total_harga));
        else return $this->addTransaksi($id_transaksi, $id_reservasi, $tanggal, $total_harga);
    }

    private function generateUniqueID(){
        return date("ymdHis"); //year month date Hour Minute(with leading zeros) second(with l.z.)
    }

    private function addTransaksi($id_transaksi, $id_reservasi, $tanggal, $total_harga){
        //cek validitas reservasi
        $reservasi_ctrl = new ReservasiController();
        if($reservasi_ctrl->is_valid($id_reservasi, $tanggal) == false) return false;

        //masukin query
        $query = 'INSERT INTO Transaksi VALUES ("'.$id_transaksi.'", '.$id_reservasi.', "'.$tanggal.'", '.$total_harga.')';
        $query_result = $this->db->executeNonSelectQuery($query);

        //update reservasi, set ke "done"
        $query_result2 = $reservasi_ctrl->set_selesai($id_reservasi);
        return $query_result && $query_result2;
    }  
}
?>