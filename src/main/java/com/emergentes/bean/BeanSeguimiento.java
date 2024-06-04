package com.emergentes.bean;

import com.emergentes.entidades.Estudiante;
import com.emergentes.jpa.EstudianteJpaController;
import com.emergentes.jpa.exceptions.NonexistentEntityException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author Diman
 */
public class BeanSeguimiento {
    private EntityManagerFactory emf;
    private EstudianteJpaController jpaEstudiante;

    public BeanSeguimiento() {
        emf = Persistence.createEntityManagerFactory("UPseguimiento");
        jpaEstudiante = new EstudianteJpaController(emf);
    }

    public List<Estudiante> listarTodos() {
        return jpaEstudiante.findEstudianteEntities();
    }

    public void insertar(Estudiante e) {
        jpaEstudiante.create(e);
    }

    public void editar(Estudiante e) {
        try {
            jpaEstudiante.edit(e);
        } catch (Exception ex) {
            //hola
            Logger.getLogger(BeanSeguimiento.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void eliminar(Long id) {
        try {
            jpaEstudiante.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(BeanSeguimiento.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Estudiante buscar(Long id) {
        Estudiante est = new Estudiante();
        est = jpaEstudiante.findEstudiante(id);
        return est;
    }
}
