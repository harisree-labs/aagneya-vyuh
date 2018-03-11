            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Malicious User Activity
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                    <tr>
                                        <th>User Id</th>
                                        <th>User Name</th>
                                        <th>College</th>
                                        <th>Level</th>
                                        <th>Malicious</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                        <?php foreach ($userData as $userDatas): ?>
                                            <tr class="odd gradeX">
                                                <td class="text-center"><?php echo $userDatas['id']; ?></td>
                                                <td class="text-center"><?php echo $userDatas['name']; ?></td>
                                                <td class="text-center"><?php echo $userDatas['college']; ?></td>
                                                <td class="text-center"><?php echo $userDatas['level']; ?></td>
                                                <td class="text-center"><?php echo $userDatas['malicious']; ?></td>
                                                <td class="text-center"><i style="cursor: pointer;" id="see" class="fa fa-th" aria-hidden="true"></i></td>
                                            </tr>
                                        <?php endforeach; ?>
                                </tbody>
                            </table>
                            <!-- /.table-responsive -->
                            
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            
                </div>
                <!-- /.col-lg-6 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="/vyuh/assets/sb/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="/vyuh/assets/sb/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="/vyuh/assets/sb/vendor/metisMenu/metisMenu.min.js"></script>

    <!-- DataTables JavaScript -->
    <script src="/vyuh/assets/sb/vendor/datatables/js/jquery.dataTables.min.js"></script>
    <script src="/vyuh/assets/sb/vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
    <script src="/vyuh/assets/sb/vendor/datatables-responsive/dataTables.responsive.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="/vyuh/assets/sb/dist/js/sb-admin-2.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
            responsive: true
        });
    });
    </script>


    <script>
        $(document).ready(function(){
        $('#see').click(function() {
            $.ajax({
                type: "POST",
                url: "http://127.0.0.1/vyuh/index.php/admin/view_malicious_trials_of",
                data: {user_id: $(this).parent().parent().children(':first-child').text()},
                success: function(response)
                {
                    alert(response);
                },
                error: function(){
                    alert("failure");
                },
            });

            $(this).parent().parent().parent().append($('<tr><td></td> <td></td> <td></td> <td></td> <td></td> <td></td></tr>'));
    });    });
    </script>

</body>

</html>