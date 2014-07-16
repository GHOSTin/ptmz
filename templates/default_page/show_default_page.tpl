{% extends 'default.tpl' %}
{% block content %}
<!-- SLIDER -->
      <div class="row-fluid">
        <div class="camera_wrap pattern_4 camera_emboss" id="camera_wrap_4">
          <div data-src="/images/nkt1.jpg">
            <div class="camera_caption fadeFromTop">
              <h1>НКТ-трубы<a href="#" class="sliderlink"><i class="icon-link"></i></a></h1>
              <span>
                Трубы в хорошем состоянии, имеются сертификаты.
              </span>
            </div>
          </div>
          <div data-src="/images/nkt2.jpg">
            <div class="camera_caption fadeFromRight">
              <h1>НКТ-трубы<a href="#" class="sliderlink"><i class="icon-link"></i></a>
              </h1>
              <span>
              Трубы в хорошем состоянии, имеются сертификаты.
              </span>
            </div>
          </div>
          <div data-src="/images/nkt3.jpg">
            <div class="camera_caption fadeFromRight">
              <h1>НКТ-трубы<a href="#" class="sliderlink"><i class="icon-link"></i></a>
              </h1>
              <span>
              Трубы в хорошем состоянии, имеются сертификаты.
              </span>
            </div>
          </div>
        </div>
        <div class="text-center">
          <img src="/images/sha.png" class="slidershadowcam" alt="">
        </div>
      </div>
  <!-- intro  -->
  <div class="row-fluid text-center intro">
    <div class="span12">
      <h1>Вас приветствует компания ООО "Первоуральский Трубо-Механический завод"</h1>
      <p class="featured lead bottom10">
        Наше предприятие более 8 лет находится на рынке трубного металлопроката, одним из основных направлений деятельности является производство насосно-компрессорных труб в соответствии с ГОСТ 633-80, обсадных труб в соответствии с ГОСТ 632-80 и бурильных труб ЗН-95 в соответствии с ГОСТ 631-7.
      </p>
    </div>
  </div>
<!-- SUPPORT  -->
<div class="row-fluid graysection text-center top40">
  <p class="lead bottom0">
    Мы хорошо понимаем, что основой любого бизнесса явялется доверие и честность. Отдавая себе отчет о том, что взаимопонимание никогда не появляется мнгновенно. Мы сознательно настроены на долгострочную совместную работу, качественно и своевременно выполняя свои обязательства.
  </p>
</div>
<!-- OUR COMPANY & WHY CHOOSE US  -->
<div class="row-fluid" style="margin-top:-10px;">
  <!-- half -->
  <div class="span6">
    <div class="titleborder">
      <div>
        Технология
      </div>
    </div>
    <p>Технология включает весь комплекс операций: входной контроль, шаблонирование, нарезание резьбы, сборочная, гидроиспытания, маркировка, упаковка.</p>
    <ol>
      <li>При входном контроле дополнительно проводится испытание на образцах для определения механических свойств, т.е. подтверждение сертификационных данных о категории прочности поступившей партии труб.</li>

      <li>Нарезание резьбы производится на модернизированных универсальных станках гребёнками "Sandvik", что обеспечивает профиль резьбы. 100% контроль осуществляеться гладкими и резьбовыми калибрами. Периодически качество резьбовых концов по всем параметрам определяеться независимой метрологической лаборатории ОАО "Уралмаш" завода г.Екатеринбурга.</li>

      <li>По требованиям заказчика проводится консервация наружных поверхностей труб пассирующим раствором ГФ-О21 для защиты от атмосферной коррозии. Резьбы и упорные торцы защищены предохранительными кольцами и ниппелями.</li>

      <li>Упаковка в пакеты в форме шестигранника осуществляеться проволокой в четыре связки.</li>

      <li>Производительность цеха по изготовлению НКТ обеспечивает 600 тн. в месяц.</li>
    </ol>
  </div>
  <!-- half -->
  <div class="span6">
    <div class="titleborder">
      <div>
        Почему вы должны выбрать нас?
      </div>
    </div>
    <div class="accordion">
      <h3><span>Политика качества</span></h3>
      <div class="accord_cont">
        <p>
          При производстве и проверке труб осуществляется поэтапный контроль качества выпускаемой продукции, который позволяет выявить и устранить практически весь спектр дефектов до сдачи её на склад.
        </p>
      </div>
      <h3><span>Собственный склад</span></h3>
      <div class="accord_cont">
        <p>
          На нашем складе всегда в наличии трубы различных диаметров и марок стали. При отсутствии продукции на складе всегда возможна продажа её под заказ.
        </p>
      </div>
      <h3><span>Индивидуальный подход к заказчику</span></h3>
      <div class="accord_cont">
        <p>
           Система предварителной записи позволяет с минимальными временными затратами скомплектовать и отгрузить заказчику необходимую продукцию.
        </p>
      </div>
      <h3><span>Транспорт</span></h3>
      <div class="accord_cont">
        <p>
           Отгрузка продукции железнодорожным и автотранспортом.
            <ul>
              <li>Отгрузка грузов в ближнее и дальнее зарубежье</li>
              <li>Оформление всех таможенных процедур</li>
              <li>При таможенных грузах оформляется сертификат происхождения товара по форме СТ-1 при наличии сертификатов качества или технического паспорта завода</li>
            </ul>
        </p>
      </div>
    </div>
  </div>
</div>
{% endblock %}
{% block js %}
<script>
  jQuery(function(){
    jQuery('#camera_wrap_4').camera({
      height: 'auto',
      loader: 'bar',
      pagination: false,
      thumbnails: false,
      hover: true,
      opacityOnGrid: false,
      overlayer: false,
      imagePath: 'img/'
    });
  });
</script>
<!-- CALL FEATURED WORK -->
<script type="text/javascript">
//CAROUSEL
jQuery(document).ready(function ($) {
  $('#recent-portfolio').carouFredSel({
    responsive: true,
    items       : {
        width       : 200,
        height      : 237,
        visible     : {
            min         : 1,
            max         : 4
        }
    },
    width: '100%',
    height: '227px',
    auto: true,
    circular  : true,
    infinite  : false,
    prev : {
      button    : "#car_prev",
      key     : "left",
        },
    next : {
      button    : "#car_next",
      key     : "right",
          },
    swipe: {
      onMouse: true,
      onTouch: true
      },
    scroll: {
        easing: "easeInOutSine",
        duration: 1200
    }
  });
});
//ISOTOPE
jQuery(document).ready(function ($) {
var $containerbox = $('#content');
  $containerbox.imagesLoaded( function(){
  $containerbox.isotope({
  filter: '*',
  animationOptions: {
   duration: 750,
   easing: 'linear',
   queue: false,
   }
});
});
//FILTER
$('#filter a').click(function(){
  var selector = $(this).attr('data-filter');
  $containerbox.isotope({
  filter: selector,
  animationOptions: {
   duration: 750,
   easing: 'linear',
   queue: false,
   }
  });
  return false;
});
$('#filter a').click(function (event) {
  $('a.selected').removeClass('selected');
  var $this = $(this);
  $this.addClass('selected');
  var selector = $this.attr('data-filter');
  $containerbox.isotope({
     filter: selector
  });
  return false;
});
});
//ROLL ON HOVER
jQuery(document).ready(function ($) {
$(".roll").css("opacity","0");
$(".roll").hover(function () {
$(this).stop().animate({
opacity: .8
}, "slow");
},
function () {
$(this).stop().animate({
opacity: 0
}, "slow");
});
});
</script>
<!-- CALL ACCORDION -->
<script type="text/javascript">
  $(".accordion h3").eq(0).addClass("active");
  $(".accordion .accord_cont").eq(0).show();
  $(".accordion h3").click(function(){
    $(this).next(".accord_cont").slideToggle("slow")
    .siblings(".accord_cont:visible").slideUp("slow");
    $(this).toggleClass("active");
    $(this).siblings("h3").removeClass("active");
  });
</script>
{% endblock %}