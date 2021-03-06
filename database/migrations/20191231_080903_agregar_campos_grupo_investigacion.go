package main

import (
	"fmt"
	"io/ioutil"
	"strings"
	
	"github.com/astaxie/beego/migration"
)

// DO NOT MODIFY
type AgregarCamposGrupoInvestigacion_20191231_080903 struct {
	migration.Migration
}

// DO NOT MODIFY
func init() {
	m := &AgregarCamposGrupoInvestigacion_20191231_080903{}
	m.Created = "20191231_080903"

	migration.Register("AgregarCamposGrupoInvestigacion_20191231_080903", m)
}

// Run the migrations
func (m *AgregarCamposGrupoInvestigacion_20191231_080903) Up() {
	// use m.SQL("CREATE TABLE ...") to make schema update
	// use m.SQL("CREATE TABLE ...") to make schema update
	file, err := ioutil.ReadFile("../scripts/20191231_080903_agregar_campos_grupo_investigacion.up.sql")

	if err != nil {
		// handle error
		fmt.Println(err)
	}

	requests := strings.Split(string(file), ";")

	for _, request := range requests {
		fmt.Println(request)
		m.SQL(request)
		// do whatever you need with result and error
	}
}

// Reverse the migrations
func (m *AgregarCamposGrupoInvestigacion_20191231_080903) Down() {
	// use m.SQL("DROP TABLE ...") to reverse schema update
	file, err := ioutil.ReadFile("../scripts/20191231_080903_agregar_campos_grupo_investigacion.down.sql")

	if err != nil {
		// handle error
		fmt.Println(err)
	}

	requests := strings.Split(string(file), ";")

	for _, request := range requests {
		fmt.Println(request)
		m.SQL(request)
		// do whatever you need with result and error
	}
}
