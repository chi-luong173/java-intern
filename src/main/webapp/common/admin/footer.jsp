<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
 <%@incude file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>


<!--============================= FOOTER =============================-->
<footer class="main-block dark-bg {{ footer }}">
    <div class="container">
        <div class="row">
            <div class="col-md-12 ">
                <div class="copyright">
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    <p>
                        © 2020 <a href="" target="_blank">Britcat</a> | Nhóm sinh viên trường đại học Bách Khoa thành
                        phố Hồ Chí Minh.

                    </p>
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    {#                    <ul>#}
                    {#                        <li><a href="#"><span class="ti-facebook"></span></a></li>#}
                    {#                        <li><a href="#"><span class="ti-twitter-alt"></span></a></li>#}
                    {#                        <li><a href="#"><span class="ti-instagram"></span></a></li>#}
                    {#                    </ul>#}
                </div>
            </div>
        </div>
    </div>
</footer>
<!--//END FOOTER -->


<!-- <button class="open-button" onclick="openForm()">Chat</button> -->

<script>
    // function openForm() {
    //     document.getElementById("formRecommend").style.display = "block";
    // }

    // function closeForm() {
    //     document.getElementById("formRecommend").style.display = "none";
    //     fetch(`/reset-rec?rp=n`).then((response) => {

    //     })
    // }
</script>
<script>
    // function loadPredictCate(){
    //     console.log("bame")
    //     fetch(`/load-predict-cate`).then((response) => {
    //         response.json().then(function(data) {
    //             if (response.status == 201){
    //                 openForm()
    //                 key = Object.keys(data)[0]
    //                 document.getElementById("recommend-text").innerHTML += key + " ?"
    //                 document.getElementById("btn-recommend").setAttribute('href', `/reset-rec?rp=${key}`)
    //                 console.log(Object.keys(data)[0])
    //             }
    //         })
    //     })
    // }
    // loadPredictCate()
</script>

<script>
    $(window).scroll(function () {
        // 100 = The point you would like to fade the nav in.

        if ($(window).scrollTop() > 100) {

            $('.fixed').addClass('is-sticky');

        } else {

            $('.fixed').removeClass('is-sticky');

        }
        ;
    });
</script>
<style>
    .footer {
        width: 100%;
        position: fixed;
        left: 0;
        bottom: 0;
    }
</style>