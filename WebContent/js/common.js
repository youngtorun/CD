function _change() {
	$("#vCode").attr("src", "/cd/VerifyCodeServlet?" + new Date().getTime());
}