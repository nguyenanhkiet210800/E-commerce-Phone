<script>
$('.xem-them').click(function(e){
	e.preventDefault();
	var $kieu = $('.aj-kieu').val();
	var $link = $('.aj-link').val();
	var $so_luong_show = $('.aj-so_luong_show').val();
	var $keyword = $('.keyword').val();
	var $trang_xl = $('.aj-trang_xl').val();
	
	form_data ={
		kieu:$kieu,so_luong_show:$so_luong_show,keyword:$keyword,dlink:$link,trang_xl:$trang_xl
	};
	$.ajax({
		url: "ajax_tim_xem_them_2.php",
		type: 'POST',
		data: form_data,
		success: function(data) {
			$("#bang").html(data);
		}
	});
})
</script>