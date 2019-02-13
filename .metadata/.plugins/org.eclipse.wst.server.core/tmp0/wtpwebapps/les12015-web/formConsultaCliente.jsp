<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
 <%@ page import="les12015.core.aplicacao.Resultado, les12015.dominio.*, java.util.*"%>
 <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="http://cdn.datatables.net/plug-ins/3cfcc339e89/integration/bootstrap/3/dataTables.bootstrap.css">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="SalvarCliente">
		Nome<input type="text" id="txtNome" name="txtNome"/>
		CPF<input type="text" id="txtCpf" name="txtCpf"/>
		<input type="submit" name="operacao" value="CONSULTAR" id="operacao">
		<br><br><br>
		<table id="datatable" class="table table-striped table-bordered" cellspacing="0" width="100%">
    				<thead>
						<tr>
							<th>Nome</th>
							<th>CPF</th>
							<th>Genero</th>
							<th>E-mail</th>
							<th>Nascimento</th>
							<th>Endere�o</th>
 							<th>Editar</th>
						</tr>
					</thead>
					<tbody>
							<c:forEach items="${listaCliente}" var="cliente" >
								<tr>
								    <td>${cliente.nome}</td>
								    <td>${cliente.cpf}</td> 
								    <td>${cliente.genero}</td> 
								    <td>${cliente.email}</td> 
								    <td>${cliente.dtNasc}</td>
								    <td><input type="button" name="operacao" value="Endere�o" id="operacao"></td>  						 
                            	 <td><p data-placement="top" data-toggle="tooltip" title="Edit"><button type="button" class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
	                            </tr>
                            </c:forEach>						                   
					</tbody>
				</table>	
	</form>
		
		<div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
      <div class="modal-dialog">
    <div class="modal-content">
          <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">�</button>
        <form method="post" action="SalvarCliente">
	</form>
      </div>
          <div class="modal-body">
          
          <div class="form-group">
        <input class="form-control " type="text" placeholder="Nome" id="txtNome" name="txtNome">
        </div>
        
        <div class="form-group">
        <input class="form-control " type="password" placeholder="Senha" id="txtSenha" name="txtSenha">
        </div>
        
        <div class="form-group">       
        <input class="form-control " type="text" placeholder="CPF" id="txtCpf" name="txtCpf">
        </div>
        
        <div class="form-group">       
        <input class="form-control " type="text" placeholder="E-mail" id="txtEmail" name="txtEmail">
        </div>
        Nascimento
        <div class="form-group">       
        <input class="form-control " type="date" placeholder="Niver" id="bday" name="bday">
        </div>
        
        <div class="form-group">       
        Genero
       <select id="txtGender" name="txtGender">
				  <option value="masculino">Masculino</option>
				  <option value="feminino">Feminino</option>
				  <option value="outros">Outros</option>
				</select></br>
        </div>
        
        
      </div>
          <div class="modal-footer ">
        <button type="button" class="btn btn-primary btn-lg" style="width: 100%;"><span class="glyphicon glyphicon-ok-sign"></span>�ALTERAR</button>
      </div>
        </div>
    <!-- /.modal-content --> 
  </div>
      <!-- /.modal-dialog --> 
    </div>
</body>
</html>