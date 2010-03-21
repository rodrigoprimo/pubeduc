<?php

$tikiPath = '/var/www/pubeduc/';
$csvFile = '/home/rodrigo/devel/pubeduc/docs/lista_see.csv';

chdir($tikiPath);
set_include_path(get_include_path() . PATH_SEPARATOR . $tikiPath);
require_once($tikiPath . 'tiki-setup.php');
require_once($tikiPath . 'lib/userslib.php');

if (($handle = fopen($csvFile, 'r')) !== FALSE) {
    $j = 0;

    for ($i = 0; ($data = fgetcsv($handle)) !== FALSE; $i++) {
        if ($i == 0) continue;
        
        $userslib = new UsersLib();

        if ($userslib->add_user($data[0], $data[1], $data[0], $data[1], true)) {
            $j++;

            $groups = split(',', $data[3]);

            foreach ($groups as $group) {
                if (!$userlib->assign_user_to_group($data[0], $group)) {
                    echo 'Não foi possível adicionar o usuário ' . $data[0] . ' ao grupo ' . $group . "\n";
                }
            }
        } else {
            echo 'Não foi possível criar o usuário ' . $data[0] . "\n";
        }
    }

    if ($j > 0) {
        echo $j . ' usuários criados!' . "\n";
    } else {
        echo "\n\n" . 'ATENÇÃO: não foi possível criar nenhum usuário!' . "\n\n";
    }

    fclose($handle);
}

?>
