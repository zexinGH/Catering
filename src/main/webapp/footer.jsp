<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
</div>
</div>
<div class="modal fade" id="avatar-modal" aria-hidden="true"
	aria-labelledby="avatar-modal-label" role="dialog" tabindex="-1">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<form class="avatar-form" action="loginAction!modifyPic.action"
				enctype="multipart/form-data" method="post">
				<s:hidden name="empId" value="%{#session.employee.id}">
				</s:hidden>
				<div class="modal-header">
					<button class="close" data-dismiss="modal" type="button">&times;</button>
					<h4 class="modal-title" id="avatar-modal-label">修改头像</h4>
				</div>
				<div class="modal-body">
					<div class="avatar-body">
						<div class="avatar-upload">
							<input class="avatar-src" name="avatar_src" type="hidden">
							<input class="avatar-data" name="avatar_data" type="hidden">
							<label for="avatarInput">图片上传</label> <input type="file"
								class="avatar-input" id="avatarInput" name="picture" />
						</div>
						<div class="row">
							<div class="col-md-9">
								<div class="avatar-wrapper"></div>
							</div>
							<div class="col-md-3">
								<div class="avatar-preview preview-lg"></div>
								<div class="avatar-preview preview-md"></div>
								<div class="avatar-preview preview-sm"></div>
							</div>
						</div>
						<div class="row avatar-btns">
							<div class="col-md-9">
								<div class="btn-group">
									<button class="btn" data-method="rotate" data-option="-90"
										type="button" title="Rotate -90 degrees">
										<i class="fa fa-undo"></i> 向左旋转
									</button>
								</div>
								<div class="btn-group">
									<button class="btn" data-method="rotate" data-option="90"
										type="button" title="Rotate 90 degrees">
										<i class="fa fa-repeat"></i> 向右旋转
									</button>
								</div>
							</div>
							<div class="col-md-3">
								<button class="btn btn-success btn-block avatar-save"
									type="submit">
									<i class="fa fa-save"></i> 保存修改
								</button>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
</body>
<!--  /Body -->
<!--Basic Scripts-->
<script src="assets/js/jquery-2.0.3.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<!--Bootstrap Date Picker-->
<script src="assets/js/datetime/bootstrap-datepicker.js"></script>

<!--Bootstrap Time Picker-->
<script src="assets/js/datetime/bootstrap-timepicker.js"></script>

<!--Bootstrap Date Range Picker-->
<script src="assets/js/datetime/moment.js"></script>
<script src="assets/js/datetime/daterangepicker.js"></script>
<!--Beyond Scripts-->
<script src="assets/js/beyond.min.js"></script>
<!-- Validator -->
<script src="assets/js/formValidator.js"></script>
<script src="assets/js/validation/bootstrapValidator.js"></script>

<!--Picture Upland Needed Scripts-->
<script src="assets/js/cropper/cropper.min.js"></script>
<script src="assets/js/sitelogo/sitelogo.js"></script>
<script>
	// If you want to draw your charts with Theme colors you must run initiating charts after that current skin is loaded
	$(window)
			.bind(
					"load",
					function() {

						/*Sets Themed Colors Based on Themes*/
						themeprimary = getThemeColorFromCss('themeprimary');
						themesecondary = getThemeColorFromCss('themesecondary');
						themethirdcolor = getThemeColorFromCss('themethirdcolor');
						themefourthcolor = getThemeColorFromCss('themefourthcolor');
						themefifthcolor = getThemeColorFromCss('themefifthcolor');

						//Sets The Hidden Chart Width
						$('#dashboard-bandwidth-chart').data('width',
								$('.box-tabbs').width() - 20);

						//-------------------------Visitor Sources Pie Chart----------------------------------------//
						var data = [ {
							data : [ [ 1, 21 ] ],
							color : '#fb6e52'
						}, {
							data : [ [ 1, 12 ] ],
							color : '#e75b8d'
						}, {
							data : [ [ 1, 11 ] ],
							color : '#a0d468'
						}, {
							data : [ [ 1, 10 ] ],
							color : '#ffce55'
						}, {
							data : [ [ 1, 46 ] ],
							color : '#5db2ff'
						} ];
						var placeholder = $("#dashboard-pie-chart-sources");
						placeholder.unbind();

						$.plot(placeholder, data, {
							series : {
								pie : {
									innerRadius : 0.45,
									show : true,
									stroke : {
										width : 4
									}
								}
							}
						});

						//------------------------------Visit Chart------------------------------------------------//
						var data2 = [
								{
									color : themesecondary,
									label : "Direct Visits",
									data : [ [ 3, 2 ], [ 4, 5 ], [ 5, 4 ],
											[ 6, 11 ], [ 7, 12 ], [ 8, 11 ],
											[ 9, 8 ], [ 10, 14 ], [ 11, 12 ],
											[ 12, 16 ], [ 13, 9 ], [ 14, 10 ],
											[ 15, 14 ], [ 16, 15 ], [ 17, 9 ] ],

									lines : {
										show : true,
										fill : true,
										lineWidth : .1,
										fillColor : {
											colors : [ {
												opacity : 0
											}, {
												opacity : 0.4
											} ]
										}
									},
									points : {
										show : false
									},
									shadowSize : 0
								},
								{
									color : themeprimary,
									label : "Referral Visits",
									data : [ [ 3, 10 ], [ 4, 13 ], [ 5, 12 ],
											[ 6, 16 ], [ 7, 19 ], [ 8, 19 ],
											[ 9, 24 ], [ 10, 19 ], [ 11, 18 ],
											[ 12, 21 ], [ 13, 17 ], [ 14, 14 ],
											[ 15, 12 ], [ 16, 14 ], [ 17, 15 ] ],
									bars : {
										order : 1,
										show : true,
										borderWidth : 0,
										barWidth : 0.4,
										lineWidth : .5,
										fillColor : {
											colors : [ {
												opacity : 0.4
											}, {
												opacity : 1
											} ]
										}
									}
								},
								{
									color : themethirdcolor,
									label : "Search Engines",
									data : [ [ 3, 14 ], [ 4, 11 ], [ 5, 10 ],
											[ 6, 9 ], [ 7, 5 ], [ 8, 8 ],
											[ 9, 5 ], [ 10, 6 ], [ 11, 4 ],
											[ 12, 7 ], [ 13, 4 ], [ 14, 3 ],
											[ 15, 4 ], [ 16, 6 ], [ 17, 4 ] ],
									lines : {
										show : true,
										fill : false,
										fillColor : {
											colors : [ {
												opacity : 0.3
											}, {
												opacity : 0
											} ]
										}
									},
									points : {
										show : true
									}
								} ];
						var options = {
							legend : {
								show : false
							},
							xaxis : {
								tickDecimals : 0,
								color : '#f3f3f3'
							},
							yaxis : {
								min : 0,
								color : '#f3f3f3',
								tickFormatter : function(val, axis) {
									return "";
								},
							},
							grid : {
								hoverable : true,
								clickable : false,
								borderWidth : 0,
								aboveData : false,
								color : '#fbfbfb'

							},
							tooltip : true,
							tooltipOpts : {
								defaultTheme : false,
								content : " <b>%x May</b> , <b>%s</b> : <span>%y</span>",
							}
						};
						var placeholder = $("#dashboard-chart-visits");
						var plot = $.plot(placeholder, data2, options);

						//------------------------------Real-Time Chart-------------------------------------------//
						var data = [], totalPoints = 300;

						function getRandomData() {

							if (data.length > 0)
								data = data.slice(1);

							// Do a random walk

							while (data.length < totalPoints) {

								var prev = data.length > 0 ? data[data.length - 1]
										: 50, y = prev + Math.random() * 10 - 5;

								if (y < 0) {
									y = 0;
								} else if (y > 100) {
									y = 100;
								}

								data.push(y);
							}

							// Zip the generated y values with the x values

							var res = [];
							for (var i = 0; i < data.length; ++i) {
								res.push([ i, data[i] ]);
							}

							return res;
						}
						// Set up the control widget
						var updateInterval = 100;
						var plot = $.plot("#dashboard-chart-realtime",
								[ getRandomData() ], {
									yaxis : {
										color : '#f3f3f3',
										min : 0,
										max : 100,
										tickFormatter : function(val, axis) {
											return "";
										}
									},
									xaxis : {
										color : '#f3f3f3',
										min : 0,
										max : 100,
										tickFormatter : function(val, axis) {
											return "";
										}
									},
									colors : [ themeprimary ],
									series : {
										lines : {
											lineWidth : 0,
											fill : true,
											fillColor : {
												colors : [ {
													opacity : 0.5
												}, {
													opacity : 0
												} ]
											},
											steps : false
										},
										shadowSize : 0
									},
									grid : {
										hoverable : true,
										clickable : false,
										borderWidth : 0,
										aboveData : false
									}
								});

						function update() {

							plot.setData([ getRandomData() ]);

							plot.draw();
							setTimeout(update, updateInterval);
						}
						update();

						//-------------------------Initiates Easy Pie Chart instances in page--------------------//
						InitiateEasyPieChart.init();

						//-------------------------Initiates Sparkline Chart instances in page------------------//
						InitiateSparklineCharts.init();
					});
</script>
<!--Google Analytics::Demo Only-->
<script>
	(function(i, s, o, g, r, a, m) {
		i['GoogleAnalyticsObject'] = r;
		i[r] = i[r] || function() {
			(i[r].q = i[r].q || []).push(arguments)
		}, i[r].l = 1 * new Date();
		a = s.createElement(o), m = s.getElementsByTagName(o)[0];
		a.async = 1;
		a.src = g;
		m.parentNode.insertBefore(a, m)
	})(window, document, 'script',
			'http://www.google-analytics.com/analytics.js', 'ga');

	ga('create', 'UA-52103994-1', 'auto');
	ga('send', 'pageview');
</script>
</html>
