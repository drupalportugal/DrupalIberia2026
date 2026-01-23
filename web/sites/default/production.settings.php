<?php

/**
 * @file
 * Lagoon production settings file.
 *
 */

$settings['mailer_sendmail_commands'] = [
  ini_get('sendmail_path'),
];

// Sendmail override transport for Lagoon/amazee
$config['symfony_mailer.mailer_transport.sendmail']['configuration']['query']['command'] = '/usr/sbin/sendmail -t -i';
