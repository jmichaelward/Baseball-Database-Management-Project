<?php

/**
 * Class DB
 */
class DB {
	/**
	 * @var string
	 */
	private $host;

	/**
	 * @var string
	 */
	private $name;

	/**
	 * @var string
	 */
	private $user;

	/**
	 * @var string
	 */
	private $password;

	/**
	 * @var
	 */
	private $connection;

	/**
	 * @var
	 */
	private static $instance;

	/**
	 * DB constructor.
	 */
	private function __construct() {
		$this->host     = 'localhost';
		$this->name     = 'baseball';
		$this->user     = 'root';
		$this->password = 'root';
	}

	/**
	 *
	 */
	public static function get_instance() {
		if ( ! self::$instance ) {
			self::$instance = new self;
		}

		return self::$instance;
	}

	/**
	 */
	private function connect() {
		return $this->connection = mysqli_connect( $this->host, $this->user, $this->password, $this->name );
	}

	/**
	 *
	 */
	public function connection() {
		return $this->connection ?: $this->connect();
	}

	/**
	 *
	 */
	public function disconnect() {
		mysqli_close( $this->connection );

		$this->connection = null;
	}
}
