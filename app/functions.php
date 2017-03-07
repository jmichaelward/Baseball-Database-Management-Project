<?php
function get_player_positions() {
	return [
		'Pitchers'           => 'P',
		'Catchers'           => 'C',
		'Infielders'         => [ '1B', '2B', 'SS', '3B', 'IF' ],
		'Outfielders'        => [ 'LF', 'CF', 'RF' ],
		'Designated Hitters' => 'DH'
	];
}