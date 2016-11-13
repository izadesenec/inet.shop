<?php

class PhotoUpload {
   protected $src;
   protected $name;
   protected $price;
   protected $description;
   protected $error;


   const SIZEOFFILE=2*1024*1024;
   const UPLOAD_DIR='images';
   const AVAILABLE_TYPE=array(
            "image/jpeg",
            "image/jpg",
            "image/png",
            "image/gif",
        );
        public function validate() {
        $file = $_FILES['photo'];
        $name=$_POST['name'];
        $price=$_POST['price'];
        $description=$_POST['description'];

        if (empty($_FILES['photo'])||empty($name)||empty($price)||empty($description)) {
            $this->error='The file is absent or empty input';   
            return false;
        } else if (!in_array($file['type'], self::AVAILABLE_TYPE)) {
            $this->error='Invalid type of file';   
            return false;
            
            
            
           
            
        } else if ($file['size'] >= self::SIZEOFFILE) {
            echo 'File is too large. The size of your file should be less than 2 Mb';
        } else {
            $this->name= $name;
                $this->price= $price;
                $this->description=$description;
            
            return true;
        }
    }
    public function upload() {
        $file=$_FILES['photo'];
                $file_name_parts = explode(".", $file['name']);
		$file_extention = array_pop($file_name_parts);
		$file_base_name = implode("", $file_name_parts);
		$file_name = md5($file_base_name . rand(1, getrandmax()));
		$file_name .= '.' . $file_extention;
		$this->src = self::UPLOAD_DIR.'/'. $file_name;
                
                
		if (move_uploaded_file($file['tmp_name'], $this->src))
                {
                    
                    return true;
                }else{
                    
                    return false;
                }
    }
    public function addToDb() {
        if($this->src){
            $querry="INSERT INTO goods (name, price, description, photo) VALUES ('{$this->name}','$this->price','$this->description','{$this->src}')";
            
            $dbh=new PDO('mysql:host=localhost;dbname=inet_shop', 'root', '');
            $dbh->query($querry);
        }
        
        
    }
    public function errors() {
        return $this->error;
        
    } 
}
 



