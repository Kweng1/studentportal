<div class="rows" style="margin-top: 90px">

    <div class="col-12 col-sm-12 col-lg-12">
        <?php
        if (isset($_GET['studentId'])) {
            if ($_GET['studentId'] == "") {
                message("ID Number is required!", "error");
                check_message();

            } else {


                $Schoolyr = new Schoolyr();
                $NumberofResult = $Schoolyr->findsy($_GET['studentId']);
                if ($NumberofResult == 0) {
                    redirect("enrollment.php?studentId=" . $_GET['studentId']);
                } else {

                    $sy = $Schoolyr->single_sy($_GET['sy']);
                    $course = new Course();
                    $studcourse = $course->single_course($sy->COURSE_ID);
                    $button = '<a href = "index.php?view=assign&studentId=' . $_GET['studentId'] . '&SY=' . $sy->AY . '&cid=' . $sy->COURSE_ID . '&sy=' . $_GET['sy'] . '" class="btn btn-default"><span class="glyphicon glyphicon-plus-sign"></span>Assign Subject</a>
                     <button type="submit" class="btn btn-default" name="delete"><span class="glyphicon glyphicon-trash"></span> Delete Selected</button>';
                }

                $student = new Student();
                $cur = $student->single_student($_GET['studentId']);

            }
        }

        ?>

        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title"><span class="glyphicon glyphicon-user"></span> Report card of Students </h3>
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="container">
                        <div class="well">
                            <span id="printout">
                                <table>
                                    <tbody>
                                        <tr>
                                            <td>
                                                <p><b>ID Number : </b><?php echo (isset($cur)) ? $cur->IDNO : 'ID'; ?><br />
                                                    <b>Name :</b><?php echo (isset($cur)) ? $cur->LNAME . ', ' . $cur->FNAME : 'Fullname'; ?><br />
                                                    <b>Status : </b><?php echo (isset($sy)) ? $sy->STATUS : 'STATUS'; ?><br />
                                                    <b>AY : </b><?php echo (isset($sy)) ? $sy->AY : 'STATUS'; ?><br />
                                                    <b>YR/Section : </b><?php echo (isset($studcourse)) ? $studcourse->COURSE_DESC : 'Department'; ?>
                                                </p>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                                <br>
                                <form class="form-horizontal span4"
                                    action="controller.php?action=delsubj&studentId=<?php echo $_GET['studentId']; ?>&cid=<?php echo $_GET['cid']; ?>&sy=<?php echo $_GET['sy']; ?>"
                                    method="POST">
                                    <table class="table table-striped" cellspacing="0" id="table">

                                        <thead>
                                            <tr>

                                                <th>Subject</th>
                                                <th class="bottom">Description</th>
                                                <th>PRELIM</th>
                                                <th>MIDTERM</th>
                                                <th>PRE-FINAL</th>
                                                <th>FINAL</th>
                                                <th>Remarks</th>
                                                <th>Average</th>
                                                <!-- Add an Average column -->
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php
$cid = (isset($studcourse)) ? $studcourse->COURSE_ID : 0;
$sumOfAverages = 0;
$numOfSubjects = 0;
$hasFailedSubject = false;

$mydb->setQuery("SELECT * 
                FROM  `subject` s,  `course` c ,`grades` g
                WHERE s.`COURSE_ID` = c.`COURSE_ID` AND s.`SUBJ_ID`=g.`SUBJ_ID` 
                AND  `IDNO` = " . $_GET['studentId'] . " AND c.`COURSE_ID`=" . $_GET['cid']);

$cur = $mydb->loadResultlist();

foreach ($cur as $result) {
    echo '<tr>';

    echo '<td width="15%">' . $result->SUBJ_CODE . '</td>';
    echo '<td width="30%">' . $result->SUBJ_DESCRIPTION . '</td>';
    echo '<td>' . $result->FIRST . '</td>';
    echo '<td>' . $result->SECOND . '</td>';
    echo '<td>' . $result->THIRD . '</td>';
    echo '<td>' . $result->FOURTH . '</td>';
    echo '<td>' . $result->REMARKS . '</td>';
    
    // Calculate and display the average for each subject
    $average = ($result->FIRST + $result->SECOND + $result->THIRD + $result->FOURTH) / 4;
    echo '<td>' . number_format($average, 2) . '</td>';

    $sumOfAverages += $average;
    $numOfSubjects++;

    if ($result->REMARKS == 'Failed') {
        $hasFailedSubject = true;
    }

    echo '</tr>';
}

// Calculate and display the overall average
$overallAverage = ($numOfSubjects > 0) ? ($sumOfAverages / $numOfSubjects) : 0;

echo '<tr><td colspan="7"></td><td><b>Overall Average:</b></td><td>';

// Highlight "INC" if there is at least one subject with a "Failed" remark
if ($hasFailedSubject) {
    echo '<span style="color: red;">INC</span>';
} else {
    echo '<b>' . number_format($overallAverage, 2) . '</b>';
}

echo '</td></tr>';
?>
                                        </tbody>

                                    </table>
                                </form>
                            </span>
                            <div class="btn-group" id="divButtons" name="divButtons">
                                <!-- Add any additional buttons or functionality here -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div><!--/span-->
    </div>

    <script>
        function tablePrint() {
            document.all.divButtons.style.visibility = 'hidden';
            var display_setting = "toolbar=no,location=no,directories=no,menubar=no,";
            display_setting += "scrollbars=no,width=500, height=500, left=100, top=25";
            var content_innerhtml = document.getElementById("printout").innerHTML;
            var document_print = window.open("", "", display_setting);
            document_print.document.open();
            document_print.document.write('<body style="font-family:verdana; font-size:12px;" onLoad="self.print();self.close();" >');
            document_print.document.write(content_innerhtml);
            document_print.document.write('</body></html>');
            document_print.print();
            document_print.document.close();
            return false;
        }
        $(document).ready(function() {
            oTable = jQuery('#example').dataTable({
                "bJQueryUI": true,
                "sPaginationType": "full_numbers"
            });
        });
    </script>
</div>
