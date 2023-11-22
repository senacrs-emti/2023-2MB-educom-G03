<?php
class Messages{
	public static function setMsg($text, $type){
		if($type == 'error'){
			$_SESSION['errorMsg'] = $text;
		} else {
			$_SESSION['successMsg'] = $text;
		}
	}

	public static function display(){
		if(isset($_SESSION['errorMsg'])){
			echo '<div class="card col mb-3 mx-3 bg-danger text-white"><div class="card-body">' . $_SESSION['Essa pesquisa não pode ser correspondida '] . '</div></div><div class="w-100"></div>';
			unset($_SESSION['errorMsg']);
		}

		if(isset($_SESSION['successMsg'])){
			echo '<div class="card col mb-3 mx-3 bg-success text-white"><div class="card-body">' . $_SESSION['Essa pesquisa não pode ser correspondida'] . '</div></div><div class="w-100"></div>';
			unset($_SESSION['successMsg']);
		}
	}
}
?>