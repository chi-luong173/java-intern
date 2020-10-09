<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Trang chủ</title>
	</head>

	<body>
		

    <!--============================= BOOKING DETAILS =============================-->
    <section class="light-bg booking-details_wrap">
        <div class="container">
            <div class="row">
                
                <div class="col-md-8 responsive-wrap">
            
                    <div id = "comment" class="booking-checkbox_wrap mt-4" style="height:500px;overflow: auto">
                        <form method="POST" action="/stores/">
                    <div class="row detail-filter-wrap">
                        <div class="col-md-12 featured-responsive">
                            <div class="detail-filter-text">
                                <p>DANH SÁCH REVIEWS</p><br><br>
                            </div>
                        </div>
                        
                        <div class="col-md-4 featured-responsive">
                            <div class="detail-filter">
                                Tìm kiếm
                                <input type="submit" class="btn btn-dark" value="Tìm kiếm">
                            </div>
                        </div>
                    
                        <div class="col-md-8 featured-responsive">
                            <div class="detail-filter">
                                <p>Sắp xếp theo</p>
                                <select name="star" class="custom-select">

                                    <option class="star-filter" value="Tăng dần" selected="selected">Tăng dần</option>

                                    <option class="star-filter" value="Giảm dần">Giảm dần</option>
                                </select>
                            </div>
                        </div>
                                        
                    </div>
                    </form>
                    <!-- PHÂN TRANG -->
                    <!-- <div class="row light-bg detail-options-wrap">
                        <nav aria-label="Page navigation example" class="col-12">
                            <ul class="pagination justify-content-end">
                                
                                {% if pages < 3 %}
                                    {% for i in range(pages) %}
                                        <li class="page-item">
                                            <a class="page-link" href="/stores/?page={{ i+1 }}{{additional_params}}">
                                                {{i+1}}</a>
                                        </li>
                                    {% endfor %}
                                {% elif current_page == 1 %}
                                    <li class="page-item disabled">
                                        <a class="page-link" href="" tabindex="-1">Đầu</a>
                                    </li>

                                    <li class="page-item active">
                                        <a class="page-link" href="">{{ current_page }}</a>
                                    </li>
                                    <li class="page-item">
                                        <a class="page-link" href="/stores/?page={{ current_page+1 }}{{additional_params}}">
                                            {{ current_page+1}}</a>
                                    </li>
                                    <li class="page-item">
                                        <a class="page-link" href="/stores/?page={{ current_page+2 }}{{additional_params}}">
                                            {{ current_page+2}}</a>
                                    </li>
                                {% else %}
                                    <li class="page-item">
                                        <a class="page-link" href="/stores/?page=1{{additional_params}}" tabindex="-1">Đầu</a>
                                    </li>
                                    <li class="page-item">
                                        <a class="page-link" href="/stores/?page={{ current_page-1 }}{{additional_params}}"
                                           aria-label="Previous">
                                            <span aria-hidden="true">&laquo;</span>
                                            <span class="sr-only">Previous</span>
                                        </a>
                                    </li>

                                    <li class="page-item">
                                        <a class="page-link"
                                           href="/stores/?page={{ current_page-1 }}{{additional_params}}">{{ current_page-1 }}</a>
                                    </li>
                                    <li class="page-item active">
                                        <a class="page-link" href="">{{ current_page }}</a>
                                    </li>

                                {% endif %}

                                {% if current_page == pages or pages == 0 %}
                                    <li class="page-item disabled">
                                        <a class="page-link" href="" aria-label="Next">
                                            <span aria-hidden="true">&raquo;</span>
                                            <span class="sr-only">Next</span>
                                        </a>
                                    </li>

                                {% else %}
                                    {% if current_page !=1 %}
                                        <li class="page-item">
                                            <a class="page-link" href="/stores/?page={{ current_page+1 }}{{additional_params}}">
                                                {{ current_page+1}}</a>
                                        </li>
                                    {% endif %}
                                    <li class="page-item">
                                        <a class="page-link" href="/stores/?page={{ current_page+1 }}{{additional_params}}"
                                           aria-label="Next">
                                            <span aria-hidden="true">&raquo;</span>
                                            <span class="sr-only">Next</span>
                                        </a>
                                    </li>
                                {% endif %}
                            </ul>
                        </nav> -->

                        
                        
                        
                            
                            <div class="col-sm-12 col-lg-12 col-xl-12 featured-responsive" style="margin-bottom: 15px;">
                                <div class="featured-place-wrap">
                                    <a href="/stores/{{ data['store'].id }}">
                                        <div class="row">
                                            <div class="featured-title-box col-lg-4 col-sm-4 col-xs-12">
                                                <img style="height:200px" src=""  alt="#">
                                            </div>
                                            
                                           
                                            <div class="featured-title-box col-lg-8 col-sm-8 col-xs-12">
                                                <h6 style="padding-left:12px">{post}</h6>
                                                
                                                <p style="padding-top:30px">
                                                </p>
                                                <span> 
                                                    <i class ="fa fa-list" aria-hidden="true" style="font-size: 15px;" ></i>  
                                                    &nbsp Date
                                                </span> 
                                                <br>
                                                <p style="padding-top:30px">
                                                </p>
                                                <span> 
                                                    <i class ="fa fa-calculator" aria-hidden="true" style="font-size: 15px;" ></i> 
                                                    &nbsp Upvoted
                                                </span> 
                                                <br>
                                                <p style="padding-top:30px">
                                                </p>
                                                <span> 
                                                    <i class ="fa fa-star" aria-hidden="true" style="font-size: 15px;" ></i>  
                                                    &nbsp Downvoted
                                                </span> 
                                            </div>
                                        </div>
                                        
                                    </a>
                                </div>
                            </div>
        

<!-- 
                       <nav aria-label="Page navigation example" class="col-12">
                            <ul class="pagination justify-content-end">
                                {% if pages < 3 %}
                                    {% for i in range(pages) %}
                                        <li class="page-item">
                                            <a class="page-link" href="/stores/?page={{ i+1 }}{{additional_params}}">
                                                {{i+1}}</a>
                                        </li>
                                    {% endfor %}

                                {% elif current_page == 1 %}
                                    <li class="page-item disabled">
                                        <a class="page-link" href="" tabindex="-1">Đầu</a>
                                    </li>

                                    <li class="page-item active">
                                        <a class="page-link" href="">{{ current_page }}</a>
                                    </li>
                                    <li class="page-item">
                                        <a class="page-link" href="/stores/?page={{ current_page+1 }}{{additional_params}}">
                                            {{ current_page+1}}</a>
                                    </li>
                                    <li class="page-item">
                                        <a class="page-link" href="/stores/?page={{ current_page+2 }}{{additional_params}}">
                                            {{ current_page+2}}</a>
                                    </li>
                                {% else %}
                                    <li class="page-item">
                                        <a class="page-link" href="/stores/?page=1{{additional_params}}" tabindex="-1">Đầu</a>
                                    </li>
                                    <li class="page-item">
                                        <a class="page-link" href="/stores/?page={{ current_page-1 }}{{additional_params}}"
                                           aria-label="Previous"> 
                                            <span aria-hidden="true">&laquo;</span>
                                            <span class="sr-only">Previous</span>
                                        </a>
                                    </li>

                                    <li class="page-item">
                                        <a class="page-link"
                                           href="/stores/?page={{ current_page-1 }}{{additional_params}}">{{ current_page-1 }}</a>
                                    </li>
                                    <li class="page-item active">
                                        <a class="page-link" href="">{{ current_page }}</a>
                                    </li>

                                {% endif %}

                                {% if current_page == pages  or pages == 0 %}
                                    <li class="page-item disabled">
                                        <a class="page-link" href="" aria-label="Next">
                                            <span aria-hidden="true">&raquo;</span>
                                            <span class="sr-only">Next</span>
                                        </a>
                                    </li>

                                {% else %}
                                    {% if current_page !=1 %}
                                        <li class="page-item">
                                            <a class="page-link" href="/stores/?page={{ current_page+1 }}{{additional_params}}">
                                                {{ current_page+1}}</a>
                                        </li>
                                    {% endif %}
                                    <li class="page-item">
                                        <a class="page-link" href="/stores/?page={{ current_page+1 }}{{additional_params}}"
                                           aria-label="Next">
                                            <span aria-hidden="true">&raquo;</span>
                                            <span class="sr-only">Next</span>
                                        </a>
                                    </li>
                                {% endif %}
                            </ul>
                        </nav> -->
                        
                    </div>
                </div>
                <div class="col-md-4 responsive-wrap">
                    <div class="col-md-12 responsive-wrap contact-info">
                        Hiển thị comment

                    </div>
                    <div class="col-md-12 responsive-wrap contact-info">
                        Hiện thị top posts
                    </div>
                </div>
            </div>
        </div>
    </section>
    <script src="{{ url_for('static', filename='js/swiper.min.js') }}"></script>
    <script>
        var swiper1 = new Swiper('.swiper1', {
            slidesPerView: 3,
            spaceBetween: 2,
            slidesPerGroup: 3,
            loop: true ,
            loopFillGroupWithBlank: true,
            pagination: {
                el: '.swiper-pagination',
                clickable: true,
            },
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
        });
        var swiper2 = new Swiper('.swiper2', {
            slidesPerView: 3,
            slidesPerColumn: 2,
            spaceBetween: 20,
            slidesPerGroup: 3,
            loop: false ,
            loopFillGroupWithBlank: true,
            pagination: {
                el: '.swiper-pagination',
                clickable: true,
            },
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
        });
    </script>
    <script>
        if ($('.image-link').length) {
            $('.image-link').magnificPopup({
                type: 'image',
                gallery: {
                    enabled: true
                }
            });
        }
        if ($('.image-link2').length) {
            $('.image-link2').magnificPopup({
                type: 'image',
                gallery: {
                    enabled: true
                }
            });
        }
    </script>

<!-- <script>
    // Get references to the dom elements
var scroller = document.querySelector("#scroller");
var template = document.querySelector('#post_template');
// var loaded = document.querySelector("#loaded");
var sentinel = document.querySelector('#sentinel');

// Set a counter to count the items loaded
var counter = 0;

// Function to request new items and render to the dom
function loadItems() {

    // Use fetch to request data and pass the counter value in the QS
    fetch(`/load/{{store_id}}?c=${counter}`).then((response) => {
        // Convert the response data to JSON
        response.json().then((data) => {

            // If empty JSON, exit the function
            if (!data.length) {

                // Replace the spinner with "No more posts"
                sentinel.innerHTML = "Không còn bình luận nào.";
                return;
            }
            // Iterate over the items in the response
            for (let i = 0; i < data.length; i++) {
                // Clone the HTML template
                let template_clone = template.content.cloneNode(true);
                
                // // Query & update the template content
                let j = 0;
                var userStar = "";
                var showUser = `<img src=\"{{url_for('static',filename='images/noname.png')}}\" class=\"img-fluid\"  alt=\"#\"><p id=\"username\">${data[i].cus_name}</p>`;
                // if (data[i].users[0]){
                //     if (data[i].users[0].link_image){
                //         showUser = `<img src=\"${data[i].users[0].link_image}\" class=\"img-fluid\"  alt=\"#\"><p id=\"username\">${data[i].users[0].email.replace("@gmail.com","")}</p>`;
                //     }
                //     else{
                //         showUser = `<img src=\"{{url_for('static',filename='images/noname.png')}}\" class=\"img-fluid\"  alt=\"#\"><p id=\"username\">${data[i].users[0].email.replace("@gmail.com","")}</p>`;
                //     }
                // }
                for (; j < data[i].star_num; j++) {
                    userStar += "<i class=\"fa fa-star icon-c\"></i>";
                }
                console.log(data[i])
                if (typeof data[i].detail == "undefined") {
                    template_clone.querySelector("#detail").innerHTML = ""
                } else {
                    template_clone.querySelector("#detail").innerHTML = data[i].detail;
                }
                template_clone.querySelector("#star-num").innerHTML = data[i].star_num;
                template_clone.querySelector("#star-num-text").innerHTML = `Đã đánh giá  ${data[i].star_num} sao.`;
                template_clone.querySelector("#show-star-user").innerHTML = userStar;
                let date = new Date(data[i].updated_on.$date)
                let strDate = date.getUTCFullYear().toString() + "/" +
                    (date.getUTCMonth() + 1).toString() +
                    "/" + date.getUTCDate() + " " + date.getUTCHours() +
                    ":" + date.getUTCMinutes() + ":" + date.getUTCSeconds();
                template_clone.querySelector("#show-date").innerHTML = strDate;
                template_clone.querySelector("#show-comment-user").innerHTML = showUser;

                // Append template to dom
                scroller.appendChild(template_clone);
                
                // Increment the counter
                counter += 1;
                // Update the counter in the navbar
                // loaded.innerText = `${counter} bình luận được hiển thị.`;
                

            }
        })
    })
}

    // Create a new IntersectionObserver instance
    var intersectionObserver = new IntersectionObserver(entries => {

    // Uncomment below to see the entry.intersectionRatio when
    // the sentinel comes into view

        entries.forEach(entry => {
            console.log(entry.intersectionRatio);
        })

        // If intersectionRatio is 0, the sentinel is out of view
        // and we don't need to do anything. Exit the function
        if (entries[0].intersectionRatio <= 0) {
            return;
        }

        // Call the loadItems function
        loadItems();

    });

    // Instruct the IntersectionObserver to watch the sentinel
    intersectionObserver.observe(sentinel);
</script> -->
		
	</body>
	
</html>