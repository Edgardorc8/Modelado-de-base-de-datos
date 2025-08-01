SELECT dp.id, dp.cedula, dp.nombres_apellidos, dp.email, dp.telefono, dp.direccion, dp.otro_curso, 
        GROUP_CONCAT(t.descripcion_tipo SEPARATOR '. ') AS solicitudes, 
        dp.status_datos, co.nombre_comunas 
        FROM datos_personales dp 
        INNER JOIN solicitud_participantes s ON dp.id = s.id_civil 
        INNER JOIN comunas co ON dp.id_comuna = co.id_comunas 
        INNER JOIN tipo_curso t ON t.id = s.id_tipo_curso;