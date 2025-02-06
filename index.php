<?php 

?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/estilo.css">
    <title>Chuleta Quente Churrascaria</title>
</head>
<body class="fundofixo">
    <!-- area de menu -->
     <?php include 'menu_publico.php'; ?>
     <a name="home">&nbsp;</a>
     <main class="container">
        <!-- area de carrosel -->
         <?php include 'carrosel.php?';?>
         <!-- area de destaque -->
          <a class="pt-6" name="destaques">&nbsp;</a>
          <?php include 'produto_destaque.php';?>
          <!-- area geral de produtos -->
          <a class="pt-6" name="produtos">&nbsp;</a>
          <?php include 'produtos_geral.php';?>
          <!-- Rodapé -->
           <footer class="panel-footer" style="background: none;">
            <?php include 'rodape.php';?>
            <a nome="contato"></a>
           </footer>
     </main>
</body>
</html>