<%-- 
    Document   : index
    Created on : 4/06/2024, 8:47:21 a. m.
    Author     : BRAYAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Conversor Divisas</title>
        <!--Aca coloco el link boostrap-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
        <div class= "container mt-5">
        <h1 class= "text-center" > Conversion </h1>
        
      <form action="index.jsp" method="post" class="form-inline justify-content-center">
            <div class="form-group mb-2">
                <input type="text" name="pesos" class="form-control" placeholder="Pesos COP">

                 </div>
                    <div class="col-auto mb-2">
                      <select name="operaciones" class="form-control">
                    <option value="Dolares ">Dolares</option>
                    <option value="Pesosmex">Pesos Mxn</option>
                    <option value="Euros">Euros</option>
                    <option value="Libras">Libras Esterlinas</option>

                </select>

            </div>
         
           <div class="col-auto mb-2">
               <button type="submit" class="btn btn-primary">Calcular </button> 
                         </div>

        </form>   
        <div class="mt-3">
            <%
                String txtnum1 = request.getParameter("pesos");
                String operacion = request.getParameter("operaciones");
               int pesos = txtnum1!=null && txtnum1.matches("\\d+")? Integer.parseInt(txtnum1):0;
               double dolares = 0.00026;
               double mxn = 0.0046;
               double euros = 0.00024;
               double libra = 0.00020;
             
                double resultado = 0;
                boolean isValido = true;
                if (operacion!=null) {
                     switch(operacion) {
                     
                     
                     case "Dolares ":
                     resultado = pesos*dolares;
                     break;
                     case "Pesosmex":
                     resultado = pesos*mxn;
                     break;
                     case "Euros":
                     resultado = pesos*euros;
                     break;
                     case "Libras":
                           resultado = pesos*libra; 
                        
                     break;
                     
                     default:
                     isValido = false;
                     
                     out.println("<div class='alert-danger'> Conversion no Valida</div>");
                    }
                    if (isValido) {
                            out.println("<div class='alert-success'>Resultado: "+resultado+"</div>");
                        }
                }
                
                %>
        </div>
            
        </div>
        <!--COloco js-->
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
       
    </body>
    </html>
    
