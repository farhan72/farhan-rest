<?php


class Animal_model extends CI_Model
{
	public function getAnimal($id = null) {
		$data = null;
		if (is_null($id)) {
			$data = $this->db->get('animal')->result_array();
		} else {
			$data = $this->db->get_where('animal', ['animalId' => $id])->result_array();
		}
		return $data;
	}

	public function deleteAnimal($id) {
		$this->db->delete('animal', ['animalId' => $id]);
		return $this->db->affected_rows();
	}

	public function createAnimal($data) {
		$this->db->insert('animal', $data);
		return $this->db->affected_rows();
	}

	public function updateAnimal($id, $data) {
		$this->db->update('animal', $data, ['animalId' => $id]);
		return $this->db->affected_rows();
	}
}
