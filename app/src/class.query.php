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
	 * Query players on teams by position.
	 *
	 * @param $position
	 * @param $team_id
	 *
	 * @return array
	 */
	public function players_by_position( $position, $team_id ) {
		$where  = is_array( $position ) ? ' IN ("' . implode( '", "', $position ) . '")' : " = '{$position}'";
		$query_string  = "SELECT * FROM players 
				LEFT JOIN teams ON players.team_id = teams.team_id 
				WHERE position {$where}
				AND players.team_id = :team_id
				ORDER BY player_lastname";
		$query = $this->pdo->prepare( $query_string );
		$query->bindParam( ':team_id', $team_id, PDO::PARAM_STR );
		$query->execute();

		return $query->fetchAll();
	}

	/**
	 * Query free agent players by position.
	 *
	 * @param $position
	 *
	 * @return array
	 */
	public function free_agents_by_position( $position ) {
		$where  = is_array( $position ) ? ' IN ("' . implode( '", "', $position ) . '")' : " = '{$position}'";
		$query_string  = "SELECT * FROM freeagents
				WHERE position {$where}
				ORDER BY player_lastname";
		$query = $this->pdo->prepare( $query_string );
		$query->execute();

		return $query->fetchAll();
	}

	public function create_game( $datetime, $home_team, $away_team, $stadium, $umpcrew ) {
		$query_string = "INSERT INTO games (game_datetime, hometeam_id, awayteam_id, stad_id, crew_id) 
			VALUES (:gamedate, :hometeam, :awayteam, :stadium, :umpcrew)";
		$query = $this->pdo->prepare( $query_string );
		$query->bindParam( ':gamedate', $datetime, PDO::PARAM_STR );
		$query->bindParam( ':hometeam', $home_team, PDO::PARAM_INT );
		$query->bindParam( ':awayteam', $away_team, PDO::PARAM_INT );
		$query->bindParam( ':stadium', $stadium, PDO::PARAM_INT );
		$query->bindParam( ':umpcrew', $umpcrew, PDO::PARAM_INT );

		return $query->execute(); // Let 'em know that it worked.
	}
}
