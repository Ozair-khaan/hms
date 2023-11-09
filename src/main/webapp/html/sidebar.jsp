<%@page import="org.json.JSONObject"%>
<%@page import="org.json.JSONArray"%>
<%@page import="com.superus.esl.servlets.ValidateUser"%>
<%
if (session.getAttribute("user") != null) {
	ValidateUser user2 = new ValidateUser();
	String stoken = session.getAttribute("sToken").toString();
	String userid = session.getAttribute("Entity_id").toString();
	String role_id = session.getAttribute("group_id").toString();
	String entity_id = session.getAttribute("Entity_id").toString();
	boolean isValid2 = user2.validateUser(session.getAttribute("user").toString(),
	session.getAttribute("sToken").toString());
	if (session.getAttribute("user") != null && isValid2 && session.getAttribute("group_id") != null
	&& session.getAttribute("Entity_id") != null) {
		System.out.println("Entred Dashboard");
		String menuandsub = user2.menuandsub_menu(session.getAttribute("user").toString(),
		session.getAttribute("sToken").toString(), session.getAttribute("group_id").toString());
		JSONArray menuandsubMenu = new JSONArray(menuandsub);
%>
<div class="app-admin-wrap layout-sidebar-large clearfix">
	<div class="main-header">
		<div class="logo px-2" style="width:152px;height:50px">
			<img src="/superus_Black.png" alt="" class="w-100">
		</div>

		<div class="menu-toggle">
			<div></div>
			<div></div>
			<div></div>
		</div>

		<div style="margin: auto"></div>

		<div class="header-part-right">
			<!-- Grid menu Dropdown -->
			<div class="dropdown"></div>
			<div class="dropdown">
				<div class="user colalign-self-end">
					<img src="./assets/images/74235.png" id="userDropdown" alt=""
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">

					<div class="dropdown-menu dropdown-menu-right"
						aria-labelledby="userDropdown">
						<div class="dropdown-header">
							<i class="i-Lock-User mr-1"></i> User Profile
						</div>
						<a class="dropdown-item" href="ChangePassword.jsp">Change
							Password</a> <a class="dropdown-item" href="index.jsp">Sign out</a>
					</div>
				</div>
			</div>
		</div>

	</div>

	<div class="side-content-wrap">
		<div class="sidebar-left open rtl-ps-none" data-perfect-scrollbar
			data-suppress-scroll-x="true">
			<ul class="navigation-left">
				<li class="nav-item"><a class="nav-item-hold"
					href="Dashboard.jsp"> <i class="nav-icon i-Bar-Chart"></i> <span
						class="nav-text">Dashboard</span>
				</a>
					<div class="triangle"></div></li>
				<%
				for (int i = 0; i < menuandsubMenu.length(); i++) {
				%>
				<li class="nav-item"
					data-item="menu<%=menuandsubMenu.getJSONObject(i).getInt("menu_id")%>">
					<a class="nav-item-hold" href="#"> <i
						class="nav-icon <%=menuandsubMenu.getJSONObject(i).getString("menu_icon")%>"></i> <span class="nav-text"><%=menuandsubMenu.getJSONObject(i).getString("menu_name")%></span>
				</a>
					<div class="triangle"></div>
				</li>
				<%
				}
				%>
				
				<%if(session.getAttribute("group_id").toString().equals("249")){%>
				
					<li class="nav-item"><a class="nav-item-hold"
					href="InventoryMgm.jsp"> <i class="nav-icon i-Bar-Chart"></i> <span
						class="nav-text">Inventory Management</span>
				</a>
					<div class="triangle"></div></li>
				<%}%>
				
				
			</ul>
		</div>

		<div class="sidebar-left-secondary rtl-ps-none" data-perfect-scrollbar
			data-suppress-scroll-x="true">
			<!-- Submenu Dashboards -->
			<%
			for (int i = 0; i < menuandsubMenu.length(); i++) {
				JSONObject json = menuandsubMenu.getJSONObject(i);
				JSONArray innerArray = json.getJSONArray("sub_menu_data");
			%>
			<ul class="childNav"
				data-parent="menu<%=menuandsubMenu.getJSONObject(i).getInt("menu_id")%>">
				<%
				for (int j = 0; j < innerArray.length(); j++) {
					;
				%>
				<li class="nav-item"><a
					href="<%=innerArray.getJSONObject(j).getString("sub_menu_link")%>">
						<i class="nav-icon i-Clock-3"></i> <span class="item-name"><%=innerArray.getJSONObject(j).getString("sub_menu_name")%></span>
				</a></li>
				<%
				}
				%>
			</ul>
			<%
			}
			%>

		</div>
		<div class="sidebar-overlay"></div>
	</div>
	<!--=============== Left side End ================-->

	<!-- ============ Body content start ============= -->
	<div class="main-content-wrap sidenav-open d-flex flex-column">
		<div class="breadcrumb">
			<h1 class="mr-2">Version 4</h1>
			<ul>
				<li><a href="">Dashboard</a></li>
				<li>Version 4</li>
			</ul>
		</div>
		<div class="separator-breadcrumb border-top"></div>

		<div class="row mb-4">
			<%
			}
			} else {
			response.sendRedirect("index.jsp?sessiontimeout");
			%>
			<a href="index.jsp">You are not authorized to view this page.</a>

			<%
			}
			%>