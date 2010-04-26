<?

// classe com métodos próprios do projeto pubeduc

require_once('lib/tikilib.php');

class PubEducLib extends TikiLib {

    /**
     * Funcao para tratar os dois campos customizados de arquivos
     * do projeto pubeduc: legenda e creditos. Chamada logo apos o
     * $filegallib->replace_file() ou $filegallib->insert_file().
     *
     * @param int $fileId o id do arquivo
     * @param string $subtitle legenda para o arquivo
     * @param string $credit credito para o arquivo
     * @return void
     */
    function update_file_custom_fields($fileId, $subtitle, $credit) {
        if ($fileId)
            $this->query("UPDATE `tiki_files` SET `subtitle` = '$subtitle', `credit` = '$credit' WHERE `fileId` = $fileId");
    }
}

$pubeduclib = new PubEducLib();

?>
