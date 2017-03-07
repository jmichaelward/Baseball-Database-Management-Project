<?php

/**
 * Class Player
 */
class Player {
	/**
	 * @var mixed|string
	 */
	private $first_name;
	/**
	 * @var mixed|string
	 */
	private $last_name;
	/**
	 * @var mixed|string
	 */
	private $position;

	/**
	 * Player constructor.
	 *
	 * @param array $data
	 */
	public function __construct( array $data ) {
		$this->first_name = isset( $data['player_firstname'] ) ? $data['player_firstname'] : '';
		$this->last_name  = isset( $data['player_lastname'] ) ? $data['player_lastname'] : '';
		$this->position   = isset( $data['position'] ) ? $data['position'] : '';
	}

	/**
	 * @return string
	 */
	public function name() {
		return $this->first_name . '&nbsp;' . $this->last_name;
	}

	/**
	 * @return string
	 */
	public function position() {
		return $this->position;
	}
}