<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/** @noinspection PhpIncludeInspection */
require APPPATH . '/libraries/REST_Controller.php';

// use namespace
use Restserver\Libraries\REST_Controller;

class Animal extends REST_Controller
{
	public function __construct()
	{
		parent::__construct();
		date_default_timezone_set('Asia/Jakarta');
		$this->load->model('Animal_model', 'animal');
		$this->load->library('form_validation');
	}

	private function deleteMessage($delete, $id) {
		if ($delete > 0) {
			$this->response([
				'status' => true,
				'id' => $id,
				'message' => 'Delete data successfully'
			], REST_Controller::HTTP_OK);
		} else {
			$this->response([
				'status' => false,
				'message' => 'Delete data failed'
			], REST_Controller::HTTP_NOT_FOUND);
		}
	}

	//	Start Method API
	public function index_get()
	{
		$id = $this->get('id');
		if (is_null($id)) {
			$animals = $this->animal->getAnimal($id);
		} else {
			$animals = $this->animal->getAnimal($id);
		}
		if ($animals) {
			$this->response([
				'status' => true,
				'data' => $animals,
				'message' => 'Get data successfully'
			], REST_Controller::HTTP_OK);
		} else {
			$this->response([
				'status' => false,
				'data' => $animals,
				'message' => 'data with id='.$id.' is not found'
			], REST_Controller::HTTP_NOT_FOUND);
		}
	}

	public function index_delete()
	{
		$id = $this->delete('id');
		$delete_data = $this->animal->deleteAnimal($id);

		if (is_null($id)) {
			$this->response([
				'status' => false,
				'message' => 'provide an id'
			], REST_Controller::HTTP_BAD_REQUEST);
		} else {
			$this->deleteMessage($delete_data, $id);
		}
	}

	public function index_post()
	{
		$this->post('name');
		$date = date("Y-m-d H:i:s");
		$request = [
			'animalName' => $this->post('name'),
			'weight' => $this->post('weight'),
			'date_created' => $date
		];
		$animal_create = $this->animal->createAnimal($request);

		if ($animal_create > 0) {
			$this->response([
				'status' => true,
				'message' => 'Create data successfully'
			], REST_Controller::HTTP_CREATED);
		} else {
			$this->response([
				'status' => true,
				'message' => 'Create data failed'
			], REST_Controller::HTTP_BAD_REQUEST);
		}
	}

	public function index_put()
	{
		$id = $this->put('id');
		$date = date("Y-m-d H:i:s");
		$request = [
			'animalName' => $this->put('name'),
			'weight' => $this->put('weight'),
			'date_modified' => $date
		];

		$animal_update = $this->animal->updateAnimal($id, $request);

		if ($animal_update > 0) {
			$this->response([
				'status' => true,
				'message' => 'Update data successfully'
			], REST_Controller::HTTP_OK);
		} else {
			$this->response([
				'status' => true,
				'message' => 'Update data failed'
			], REST_Controller::HTTP_BAD_REQUEST);
		}
	}
	//	End Method API
}
