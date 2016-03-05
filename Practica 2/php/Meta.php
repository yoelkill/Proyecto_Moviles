<?php

/**
 * Representa el la estructura de personas
 * almacenadas en la base de datos
 */
require 'Database.php';

class Meta
{
    function __construct()
    {
    }

    /**
     * Retorna en la fila especificada de la tabla 'persona'
     *
     * @param $idMeta Identificador del registro
     * @return array Datos del registro
     */
    public static function getAll()
    {
        $consulta = "SELECT * FROM persona";
        try {
            // Preparar sentencia
            $comando = Database::getInstance()->getDb()->prepare($consulta);
            // Ejecutar sentencia preparada
            $comando->execute();

            return $comando->fetchAll(PDO::FETCH_ASSOC);

        } catch (PDOException $e) {
            return false;
        }
    }

    /**
     * Obtiene los campos de una meta con un identificador
     * determinado
     *
     * @param $idMeta Identificador de la meta
     * @return mixed
     */
    public static function getById($idMeta)
    {
        // Consulta de la meta
        $consulta = "SELECT CODPERSO,NOMBPERSO,APELLIPERSO
                             FROM meta
                             WHERE CODPERSO = ?";

        try {
            // Preparar sentencia
            $comando = Database::getInstance()->getDb()->prepare($consulta);
            // Ejecutar sentencia preparada
            $comando->execute(array($idMeta));
            // Capturar primera fila del resultado
            $row = $comando->fetch(PDO::FETCH_ASSOC);
            return $row;

        } catch (PDOException $e) {
            // Aquí puedes clasificar el error dependiendo de la excepción
            // para presentarlo en la respuesta Json
            return -1;
        }
    }

    /**
     * Actualiza un registro de la bases de datos basado
     * en los nuevos valores relacionados con un identificador
     * 
     * @param $CODPERSO     identificador
     * @param $NOMBPERSO      nuevo Nombre de persoona
     * @param $APELLIPERSO Apellido de persona
     */
    public static function update(
        $CODPERSO, 
        $NOMBPERSO,
        $APELLIPERSO 
    )
    {
        // Creando consulta UPDATE
        $consulta = "UPDATE persona" .
            " SET NOMBPERSO?, APELLIPERSO=?" .
            "WHERE CODPERSO=?";

        // Preparar la sentencia
        $cmd = Database::getInstance()->getDb()->prepare($consulta);

        // Relacionar y ejecutar la sentencia
        $cmd->execute(array($NOMBPERSO, $APELLIPERSO,$CODPERSO));

        return $cmd;
    }

    /**
     * Insertar una nueva meta
     *
     * @param $CODPERSO     identificador
     * @param $NOMBPERSO      nuevo Nombre de persoona
     * @param $APELLIPERSO Apellido de persona
     * @return PDOStatement
     */
    public static function insert(
        $CODPERSO,
        $NOMBPERSO,
        $APELLIPERSO
    )
    {
        // Sentencia INSERT
        $comando = "INSERT INTO persona ( " .
            "CODPERSO," .
            " NOMBPERSO" .
            " APELLIPERSO," .
            " VALUES( ?,?,?,?,?)";

        // Preparar la sentencia
        $sentencia = Database::getInstance()->getDb()->prepare($comando);

        return $sentencia->execute(
            array(
                $CODPERSO,
                $NOMBPERSO,
                $APELLIPERSO
            )
        );

    }

    /**
     * Eliminar el registro con el identificador especificado
     *
     * @param $CODPERSO identificador del codigo persona
     * @return bool Respuesta de la eliminación
     */
    public static function delete($idMeta)
    {
        // Sentencia DELETE
        $comando = "DELETE FROM persona WHERE CODPERSO=?";

        // Preparar la sentencia
        $sentencia = Database::getInstance()->getDb()->prepare($comando);

        return $sentencia->execute(array($idMeta));
    }
}

?>