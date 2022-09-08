package com.idat.empresa.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.idat.empresa.model.EmpresaEmpresario;

@Repository
public interface EmpresaEmpresarioRepository extends JpaRepository<EmpresaEmpresario,Integer>{
    
}
