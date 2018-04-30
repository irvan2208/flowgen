<!DOCTYPE html>
<html lang="en">
<head>
  <title>Flowchart generator</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Flowchart Generator</h2>
  <p><a href="flowchart.php" class="btn btn-primary">Create new Flowchart</a></p>            
  <table class="table">
    <thead>
      <tr>
        <th>No</th>
        <th>Flowchart name</th>
        <th>Action</th>
      </tr>
    </thead>
    <tbody>
      <?php
        include 'koneksi.php';
        $sql = "SELECT * FROM flowchart";
        $result = $conn->query($sql);
        $i = 1;
        while ($flowchart = $result->fetch_assoc()):
      ?>
      <tr>
        <td><?php echo $i;?></td>
        <td><?php echo $flowchart['name'];?></td>
        <td><a href="flowchart.php?id=<?php echo $flowchart['id'];?>" class="btn btn-warning">Edit</a> <a href="#" class="btn btn-danger" data-toggle="modal" data-target="#deleteModal<?php echo $flowchart['id'];?>">Delete</a></td>
      </tr>
      <div class="modal fade" id="deleteModal<?php echo $flowchart['id'];?>">
        <div class="modal-dialog">
          <div class="modal-content">

            <!-- Modal Header -->
            <div class="modal-header">
              <h4 class="modal-title">Delete Project?</h4>
              <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <!-- Modal body -->
            <div class="modal-body">
              are you sure to delete flowchart <?php echo $flowchart['name'];?>?
            </div>

            <!-- Modal footer -->
            <div class="modal-footer">
              <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
              <a href="delete.php?id=<?php echo $flowchart['id'];?>" class="btn btn-success" style="color: #fff;">Delete</a>
            </div>

          </div>
        </div>
      </div>
    <?php $i++;endwhile;$conn->close();?>
    </tbody>
  </table>
</div>
</body>
</html>
