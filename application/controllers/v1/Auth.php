<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/** @noinspection PhpIncludeInspection */
require APPPATH . '/libraries/REST_Controller.php';

// use namespace
use Restserver\Libraries\REST_Controller;

class Auth extends REST_Controller {
    public function __construct()
    {
        parent::__construct();
        date_default_timezone_set('Asia/Jakarta');
        $this->load->library('form_validation');
    }

    public function register_post() {
        $config = [
            ['field' => 'full_name',
            'label' => 'Full Name',
            'rules' => 'required'
            ],
            ['field' => 'email',
            'label' => 'Email',
            'rules' => 'required|min_length[4]|valid_email|is_unique[tbl_user.email]',
            'errors' => [
                'required' => 'We need both email and password',
                'min_length' => 'Minimum Username length is 4 characters',
                'alpha_dash' => 'You can only use a-z 0-9 _ . – characters for input',
                'is_unique' => 'This email already registered'
                ]
            ],
            ['field' => 'kelamin',
            'label' => 'Jenis Kelamin',
            'rules' => 'required|min_length[4]|max_length[6]',
            'errors' => [
                'min_length' => 'Minimum Gender length is 4 characters',
                'max_length' => 'Maximum Gender length is 6 characters'
                ]
            ],
            ['field' => 'password',
            'label' => 'Password',
            'rules' => 'required|min_length[8]|alpha_dash',
            'errors' => [
                'required' => 'You must provide a Password',
                'min_length' => 'Minimum Password length is 8 characters',
                'alpha_dash' => 'You can only use a-z 0-9 _ . – characters for input'
                ]
            ],
            ['field' => 'password_confirmation',
            'label' => 'Password',
            'rules' => 'required|min_length[8]|alpha_dash|matches[password]',
            'errors' => [
                'required' => 'You must provide a Password Confirmation',
                'min_length' => 'Minimum Password length is 8 characters',
                'alpha_dash' => 'You can only use a-z 0-9 _ . – characters for input'
                ]
            ]
        ];

        $data = $this->input->post();
        
        $this->form_validation->set_data($data);
        $this->form_validation->set_rules($config);

        if (!$this->form_validation->run()) {
            $this->response([
				'status' => false,
				'message' => validation_errors()
			], REST_Controller::HTTP_BAD_REQUEST);
        } else {
            $this->postData($data);
        }
    }

    private function postData($param) {
        $request = [
            "nama" => $param['full_name'],
            "gender" => $param['kelamin'],
            "email" => $param['email'],
            "password" => password_hash($param['password'], PASSWORD_DEFAULT)
        ];
        if ($this->db->insert('tbl_user', $request) > 0) {
            $this->response([
                'status' => true,
                'message' => 'Create data successfully'
            ], REST_Controller::HTTP_CREATED);
        }
    }

    public function login_post() {
        $config = [
            ['field' => 'email',
            'label' => 'Email',
            'rules' => 'required|min_length[4]|valid_email',
            'errors' => [
                'required' => 'We need both email and password',
                'min_length' => 'Minimum Username length is 4 characters',
                'alpha_dash' => 'You can only use a-z 0-9 _ . – characters for input'
                ]
            ],
            ['field' => 'password',
            'label' => 'Password',
            'rules' => 'required|min_length[8]|alpha_dash',
            'errors' => [
                'required' => 'You must provide a Password',
                'min_length' => 'Minimum Password length is 8 characters',
                'alpha_dash' => 'You can only use a-z 0-9 _ . – characters for input'
                ]
            ]
        ];

        $data = $this->input->post();
        
        $this->form_validation->set_data($data);
        $this->form_validation->set_rules($config);

        if (!$this->form_validation->run()) {
            $this->response([
				'status' => false,
				'message' => validation_errors()
			], REST_Controller::HTTP_BAD_REQUEST);
        } else {
            $this->_login($data);
        }
    }

    private function _login($param) {
        $request = [
            "email" => $param['email'],
            "password" => $param['password']
        ];
        $data = array();
        $user = $this->db->get_where('tbl_user', ['email' => $request['email']])->row_array();
        switch($user) {
            case true:
                if (password_verify($request['password'], $user['password'])) {

                    $data['fullName'] = $user['nama'];
                    $data['gender'] = $user['gender'];
                    $data['email_account'] = $user['email'];
                    $this->response([
                        'status' => true,
                        'data' => $data,
                        'message' => 'Login successfully'
                    ], REST_Controller::HTTP_OK);

                } else {

                    $this->response([
                        'status' => false,
                        'message' => 'wrong email or password'
                    ], REST_Controller::HTTP_BAD_REQUEST);

                }
            break;
            case false:
                $this->response([
                    'status' => false,
                    'message' => 'Email is not exist'
                ], REST_Controller::HTTP_NOT_FOUND);
            break;
        }
    }
}