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
    span.select2-selection.select2-selection--single {
        border-radius: 0;
        padding: 0.25rem 0.5rem;
        padding-top: 0.25rem;
        padding-right: 0.5rem;
        padding-bottom: 0.25rem;
        padding-left: 0.5rem;
        height: auto;
    }
</style>
                <form action="" id="supplier-form"enctype="multipart/form-data">
                    <input type="hidden" name="id" value="<?php echo isset($id) ? $id : '' ?>">
                    <div class="container-fluid">
                        <div class="form-group">
                            <label for="name" class="control-label">Supplier Name</label>
                            <input type="text" name="name" id="name" class="form-control rounded-0" value="<?php echo isset($name) ? $name :"" ?>" required>
                        </div>
                        <div class="form-group">
                            <label for="address" class="control-label">Address</label>
                            <textarea rows="3" name="address" id="address" class="form-control rounded-0" required><?php echo isset($address) ? $address :"" ?></textarea>
                        </div>
                        <div class="form-group">
                            <label for="contact_person" class="control-label">Contact Person</label>
                            <input type="text" name="contact_person" id="contact_person" class="form-control rounded-0" value="<?php echo isset($contact_person) ? $contact_person :"" ?>" required>
                        </div>
                        <div class="form-group">
                            <label for="email" class="control-label">Email</label>
                            <input type="email" name="email" id="email" class="form-control rounded-0" value="<?php echo isset($email) ? $email :"" ?>" required>
                        </div>
                        <div class="form-group">
                            <label for="contact" class="control-label">Contact</label>
                            <input type="text" name="contact" id="contact" class="form-control rounded-0" value="<?php echo isset($contact) ? $contact :"" ?>" required>
                        </div>
                        <div class="form-group">
                            <label for="status" class="control-label">Company Information</label>
                            <textarea rows="3" name="description" id="description" class="form-control rounded-0" required><?php echo isset($description) ? $description :"" ?></textarea>
                        </div>
                                <div class="form-group col-6">
                                    <label for="" class="control-label">BIR Tax Dec.</label>
                                    <div class="custom-file">
                                    <input type="file" class="custom-file-input rounded-circle" id="customFile" name="img" onchange="displayImg(this,$(this))">
                                    <label class="custom-file-label" for="customFile">Choose file</label>
                                    </div>
                                </div>
                                <div class="form-group col-6 d-flex justify-content-center">
                                    <img src="<?php echo validate_image(isset($meta['bir']) ? $meta['bir'] :'') ?>" alt="" id="cimg" class="img-fluid img-thumbnail">
                                </div>
                                <div class="form-group col-6">
                                    <label for="" class="control-label">Mayor</label>
                                    <div class="custom-file">
                                    <input type="file" class="custom-file-input rounded-circle" id="customFile" name="imgg" onchange="displayImgg(this,$(this))">
                                    <label class="custom-file-label" for="customFile">Choose file</label>
                                    </div>
                                </div>
                                <div class="form-group col-6 d-flex justify-content-center">
                                    <img src="<?php echo validate_image(isset($meta['mayor']) ? $meta['mayor'] :'') ?>" alt="" id="cimgg" class="img-fluid img-thumbnail">
                                </div>
                                <div class="form-group col-6">
                                    <label for="" class="control-label">brgy</label>
                                    <div class="custom-file">
                                    <input type="file" class="custom-file-input rounded-circle" id="customFile" name="imggg" onchange="displayImggg(this,$(this))">
                                    <label class="custom-file-label" for="customFile">Choose file</label>
                                    </div>
                                </div>
                                <div class="form-group col-6 d-flex justify-content-center">
                                    <img src="<?php echo validate_image(isset($meta['brgy']) ? $meta['brgy'] :'') ?>" alt="" id="cimggg" class="img-fluid img-thumbnail">
                                </div>
                                <div class="form-group col-6">
                                    <label for="" class="control-label">DTI</label>
                                    <div class="custom-file">
                                    <input type="file" class="custom-file-input rounded-circle" id="customFile" name="imgggg" onchange="displayImgggg(this,$(this))">
                                    <label class="custom-file-label" for="customFile">Choose file</label>
                                    </div>
                                </div>
                                <div class="form-group col-6 d-flex justify-content-center">
                                    <img src="<?php echo validate_image(isset($meta['dti']) ? $meta['dti'] :'') ?>" alt="" id="cimgggg" class="img-fluid img-thumbnail">
                                </div>
                                <div class="form-group col-6">
                                    <label for="" class="control-label">Business</label>
                                    <div class="custom-file">
                                    <input type="file" class="custom-file-input rounded-circle" id="customFile" name="imggggg" onchange="displayImggggg(this,$(this))">
                                    <label class="custom-file-label" for="customFile">Choose file</label>
                                    </div>
                                </div>
                                <div class="form-group col-6 d-flex justify-content-center">
                                    <img src="<?php echo validate_image(isset($meta['business']) ? $meta['business'] :'') ?>" alt="" id="cimggggg" class="img-fluid img-thumbnail">
                                </div>
                                
                                <div class="form-group">
                            <label for="status" class="control-label">Status</label>
                            <select name="ocular" id="ocular" class="form-control rounded-0" required>
                                <option value="1" <?php echo isset($ocular) && $ocular =="" ? "selected": "1" ?> >Yes</option>
                                <option value="0" <?php echo isset($ocular) && $ocular =="" ? "selected": "0" ?>>No</option>
                            </select>
                        </div>
                        
                    </div>


                </form>
                <script>
                    // Get the form element
const form = document.getElementById('supplier-form');

// Add a submit event listener to the form
form.addEventListener('submit', (event) => {
    event.preventDefault();

    // Get the file input element
    const fileInput = document.getElementById('customFile');

    // Create a new FormData object
    const formData = new FormData();

    // Add the selected file to the form data
    formData.append('img', fileInput.files[0]);

    // Create a new XMLHttpRequest object
    const xhr = new XMLHttpRequest();

    // Set the request method and URL
    xhr.open('POST', 'uploads/upload.php');

    // Set the request headers
    xhr.setRequestHeader('X-Requested-With', 'XMLHttpRequest');

    // Add a load event listener to the XMLHttpRequest object
    xhr.addEventListener('load', () => {
        // Check if the request was successful
        if (xhr.status === 200) {
            // Get the response text
            const response = xhr.responseText;

            // Update the image source
            document.getElementById('cimg').src = response;
        }
    });

    // Send the form data
    xhr.send(formData);
});
                    </script>
<script>
    $(function(){
        $('#supplier-form').submit(function(e){
			e.preventDefault();
            var _this = $(this)
			 $('.err-msg').remove();
			start_loader();
			$.ajax({
				url:_base_url_+"classes/Master.php?f=save_supplier",
				data: new FormData($(this)[0]),
                cache: false,
                contentType: false,
                processData: false,
                method: 'POST',
                type: 'POST',
                dataType: 'json',
				error:err=>{
					console.log(err)
					alert_toast("An error occured",'error');
					end_loader();
				},
				success:function(resp){
					if(typeof resp =='object' && resp.status == 'success'){
						location.reload();
					}else if(resp.status == 'failed' && !!resp.msg){
                        var el = $('<div>')
                            el.addClass("alert alert-danger err-msg").text(resp.msg)
                            _this.prepend(el)
                            el.show('slow')
                            $("html, body").animate({ scrollTop: 0 }, "fast");
                    }else{
						alert_toast("An error occured",'error');
                        console.log(resp)
					}
                    end_loader()
				}
			})
		})
	})

    function displayImg(input,_this) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                $('#cimg').attr('src', e.target.result);
            }

            reader.readAsDataURL(input.files[0]);
        }
    }
    function displayImgg(input,_this) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                $('#cimgg').attr('src', e.target.result);
            }

            reader.readAsDataURL(input.files[0]);
        }
    }
    function displayImggg(input,_this) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                $('#cimggg').attr('src', e.target.result);
            }

            reader.readAsDataURL(input.files[0]);
        }
    }
    function displayImgggg(input,_this) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                $('#cimgggg').attr('src', e.target.result);
            }

            reader.readAsDataURL(input.files[0]);
        }
    }
    function displayImggggg(input,_this) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                $('#cimggggg').attr('src', e.target.result);
            }

            reader.readAsDataURL(input.files[0]);
        }
    }

</script>
<script>
	$(document).ready(function(){
		$('.delete_data').click(function(){
			_conf("Are you sure to delete this User permanently?","delete_user",[$(this).attr('data-id')])
		})
		$('.table').dataTable();
	})
	function delete_user($id){
		start_loader();
		$.ajax({
			url:_base_url_+"classes/Users.php?f=delete",
			method:"POST",
			data:{id: $id},
			dataType:"json",
			error:err=>{
				console.log(err)
				alert_toast("An error occured.",'error');
				end_loader();
			},
			success:function(resp){
				if(typeof resp== 'object' && resp.status == 'success'){
					location.reload();
				}else{
					alert_toast("An error occured.",'error');
					end_loader();
				}
			}
		})
	}
</script>