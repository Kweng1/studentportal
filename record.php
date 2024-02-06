<div class="container" style="margin-top: 150px; color: #8F2A24;">
    <caption><h3 align="left" style="color: #8F2A24;">Student Enrollment Records</h3></caption>
    <form action="controller.php?action=delsy&studentId=<?php echo $_SESSION['IDNO']; ?>" method="POST">
        <table class="table table-hover">
            <thead>
                <tr>
                    <th style="color: #8F2A24;">Grade and Section</th>
                    <th style="color: #8F2A24;">Schoolyr</th>
                    <th style="color: #8F2A24;">Status</th>
                    <th style="color: #8F2A24;">Date Enrolled</th>
                    <th style="color: #8F2A24;">Options</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $mydb->setQuery("SELECT  `COURSE_NAME` ,COURSE_DESC,  `SYID` ,  `AY` ,  `SEMESTER` , s.`COURSE_ID` ,  `IDNO` ,  `CATEGORY` ,  `DATE_RESERVED` ,  `DATE_ENROLLED` ,  `STATUS` 
                                        FROM  `schoolyr` s,  `course` c
                                        WHERE s.`COURSE_ID` = c.`COURSE_ID` AND IDNO=" . $_SESSION['IDNO']);
                $cur = $mydb->loadResultList();
                foreach ($cur as $schoolyr) {
                    echo '<tr>';
                    echo '<td style="color: #8F2A24;">' . $schoolyr->COURSE_DESC . '</td>';
                    echo '<td style="color: #8F2A24;">' . $schoolyr->AY . '</td>';
                    echo '<td style="color: #8F2A24;">' . $schoolyr->STATUS . '</td>';
                    echo '<td style="color: #8F2A24;">' . $schoolyr->DATE_RESERVED . '</td>';
                    echo '<td><a href="index.php?page=4&studentId=' . $schoolyr->IDNO . '&cid=' . $schoolyr->COURSE_ID . '&sy=' . $schoolyr->SYID . '" style="color: #8F2A24; display: inline-block;" class="enroll-link">Enrolled Subjects</a></td>';
                    echo '</tr>';
                }
                ?>
            </tbody>
            <tfoot>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
            </tfoot>
        </table>
    </form>
</div>

<!-- Add the following script and style -->

<script>
    // Script to add and remove the Bootstrap 'glow' class on hover
    document.querySelectorAll('.enroll-link').forEach(link => {
        link.addEventListener('mouseover', function () {
            this.classList.add('glow');
        });
        link.addEventListener('mouseout', function () {
            this.classList.remove('glow');
        });
    });
</script>

<style>
    /* Add the 'glow' class style */
    .glow {
        transition: box-shadow 0.3s ease-in-out;
        box-shadow: 0 0 10px rgba(255, 255, 255, 0.8);
    }
</style>
