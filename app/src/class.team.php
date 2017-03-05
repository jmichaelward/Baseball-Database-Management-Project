<?php

/**
 * Class Team
 */
class Team {
	/**
	 * @var null
	 */
	private $id;
	/**
	 * @var null
	 */
	private $name;

	/**
	 * Team constructor.
	 *
	 * @param array $data
	 */
	public function __construct( array $data ) {
		$this->id   = isset( $data['team_id'] ) ? $data['team_id'] : null;
		$this->name = isset( $data['team_name'] ) ? $data['team_name'] : null;
	}

	/**
	 * @return null
	 */
	public function id() {
		return $this->id;
	}

	/**
	 * @return null
	 */
	public function name() {
		return $this->name;
	}
}