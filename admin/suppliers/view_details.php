<?php
require_once('../../config.php');
if(isset($_GET['id']) && $_GET['id'] > 0){
    $qry = $conn->query("SELECT * from `supplier_list` where id = '{$_GET['id']}' ");
    if($qry->num_rows > 0){
        foreach($qry->fetch_assoc() as $k => $v){
            $$k=stripslashes($v);
        }
    }
}
?>
<style>
    #uni_modal .modal-footer{
        display:none
    }
</style>
<div class="container fluid">
    <callout class="callout-primary">
        <dl class="row">
            <?php 
                   
                        $qry = $conn->query("SELECT * from supplier_list where id = '{$_GET['id']}' ");
                        while($row = $qry->fetch_assoc()):
            ?>
            <dt class="col-md-4">BRI Taxes Decleration</dt>
            <dd class="col-md-8">: <img src="<?php echo '../' . $row['bir']; ?>" class="img-avatar img-thumbnail p-0 border-2" alt="user_avatar"></dd><br>
            <dt class="col-md-4">Mayor's Permit</dt>
            <dd class="col-md-8">:  <img src="<?php echo '../' . $row['mayor']; ?>" class="img-avatar img-thumbnail p-0 border-2" alt="user_avatar"></dd>
            <dt class="col-md-4">Barangay's Permit</dt>
            <dd class="col-md-8">: <img src="<?php echo '../' . $row['brgy']; ?>" class="img-avatar img-thumbnail p-0 border-2" alt="user_avatar"></dd>
            <dt class="col-md-4">DTI Permit</dt>
            <dd class="col-md-8">: <img src="<?php echo '../' . $row['dti']; ?>"class="img-avatar img-thumbnail p-0 border-2" alt="user_avatar"></dd>
            <dt class="col-md-4">Business Permit</dt>
            <dd class="col-md-8">: <img src="<?php echo '../' . $row['business']; ?>"class="img-avatar img-thumbnail p-0 border-2" alt="user_avatar"></dd>


            
            <?php endwhile; ?>
        </dl>
    </callout>

    <div class="row px-2 justify-content-end">
        <div class="col-1">
            <button class="btn btn-dark btn-flat btn-sm" type="button" data-dismiss="modal">Close</button>
        </div>
    </div>
</div>
