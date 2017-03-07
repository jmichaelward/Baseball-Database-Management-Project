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
	 * @var PDO
	 */
	private $pdo;

	/**
	 * Query constructor.
	 */
	public function __construct() {
		if ( ! class_exists( 'DB' ) ) {
			include_once 'class.db.php';
		}

		$this->db  = DB::get_instance();
		$this->pdo = $this->db->pdo();
	}

	/**
	 * @return array
	 */
	public function all_teams() {
		$query = $this->pdo->prepare( "SELECT * FROM teams ORDER BY team_name" );
		$query->execute();

		return $query->fetchAll( PDO::FETCH_ASSOC );
	}

	public function team_by_id( $id ) {
		$query = $this->pdo->prepare( "SELECT * FROM teams WHERE team_id = :id" );
		$query->bindParam( ':id', $id, PDO::PARAM_INT );
		$query->execute();

		return $query->fetch( PDO::FETCH_ASSOC );
	}

	/**
	 * @param $team_id
	 * @param $position
	 *
	 * @return array
	 */
	public function players_by_position( $team_id, $position ) {
		$where  = is_array( $position ) ? ' IN ("' . implode( '", "', $position ) . '")' : " = '{$position}'";
		$query_string  = "SELECT * FROM players
				LEFT JOIN teams
				ON players.team_id = teams.team_id
				WHERE position {$where}
				AND players.team_id = '$team_id'
				ORDER BY player_lastname";
		$query = $this->pdo->prepare( $query_string );
		$query->execute();

		return $query->fetchAll();
	}
}
