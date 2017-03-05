<?php

/**
 * Class Query
 */
class Query {
	/**
	 * @var DB
	 */
	private $db;

	/**
	 * @var array
	 */
	private $results = [];

	/**
	 * Query constructor.
	 */
	public function __construct() {
		if ( ! class_exists( 'DB' ) ) {
			include_once 'class.db.php';
		}

		$this->db = DB::get_instance();
	}

	/**
	 * @param $query_string
	 *
	 * @return array
	 */
	private function perform( $query_string ) {
		return $this->process_results( mysqli_query( $this->db->connection(), $query_string ) );
	}

	/**
	 * @param $results
	 *
	 * @return array
	 */
	private function process_results( $results ) {
		if ( $results->num_rows > 0 ) {
			while ( $row = mysqli_fetch_assoc( $results ) ) {
				array_push( $this->results, $row );
			}
		}

		return $this->results;
	}

	/**
	 * @return array
	 */
	public function all_teams() {
		return $this->perform( "SELECT * FROM teams ORDER BY team_name" );
	}

	public function team_by_id( $id ) {
		$results = $this->perform( "SELECT * FROM teams WHERE team_id = '$id'" );

		return count( $results ) === 1 ? $results[0] : [];
	}
}
