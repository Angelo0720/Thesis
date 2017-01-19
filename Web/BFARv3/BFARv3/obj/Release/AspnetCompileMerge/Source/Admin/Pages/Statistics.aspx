<%@ Page Title="Statistics" Language="C#" MasterPageFile="~/Admin/Pages/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Statistics.aspx.cs" Inherits="BFARv3.Admin.Pages.Statistics" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">      			<div class="content-box-large">
  				<div class="panel-heading">
					<div class="panel-title">Sample</div>
					
					<div class="panel-options">
						<a href="#" data-rel="collapse"><i class="glyphicon glyphicon-refresh"></i></a>
						<a href="#" data-rel="reload"><i class="glyphicon glyphicon-cog"></i></a>
					</div>
				</div>
  				<div class="panel-body">
  					<div id="hero-area" style="height: 230px;"></div>
  				</div>
  			</div>

  			<div class="content-box-large">
  				<div class="panel-heading">
					<div class="panel-title">Sample Graph</div>
					
					<div class="panel-options">
						<a href="#" data-rel="collapse"><i class="glyphicon glyphicon-refresh"></i></a>
						<a href="#" data-rel="reload"><i class="glyphicon glyphicon-cog"></i></a>
					</div>
				</div>
  				<div class="panel-body">
  					<div id="hero-graph" style="height: 230px;"></div>
  				</div>
  			</div>

  			<div class="content-box-large">
  				<div class="panel-heading">
					<div class="panel-title">Sample Graph</div>
					
					<div class="panel-options">
						<a href="#" data-rel="collapse"><i class="glyphicon glyphicon-refresh"></i></a>
						<a href="#" data-rel="reload"><i class="glyphicon glyphicon-cog"></i></a>
					</div>
				</div>
  				<div class="panel-body">
  					<div class="row">
  						<div class="col-md-6">
  							<div id="hero-bar" style="height: 230px;"></div>
  						</div>
  						<div class="col-md-3">
  							<div id="hero-donut" style="height: 230px;"></div>
  						</div>
  						<div class="col-md-3">
  							<div id="hero-donut2" style="height: 230px;"></div>
  						</div>
  					</div>
  				</div>
  			</div>

  			<div class="content-box-large">
  				<div class="panel-heading">
					<div class="panel-title">Sample Graph</div>
					
					<div class="panel-options">
						<a href="#" data-rel="collapse"><i class="glyphicon glyphicon-refresh"></i></a>
						<a href="#" data-rel="reload"><i class="glyphicon glyphicon-cog"></i></a>
					</div>
				</div>
  				<div class="panel-body">
  					<div class="row">
  						<div class="col-md-3">
  							<input type="text" value="50" class="knob second" data-thickness=".3" data-inputColor="#333" data-fgColor="#30a1ec" data-bgColor="#d4ecfd" data-width="150">
  						</div>
  						<div class="col-md-3">
  							<input type="text" value="75" class="knob second" data-thickness=".3" data-inputColor="#333" data-fgColor="#8ac368" data-bgColor="#c4e9aa" data-width="150">
  						</div>
  						<div class="col-md-3">
  							<input type="text" value="35" class="knob second" data-thickness=".3" data-inputColor="#333" data-fgColor="#5ba0a3" data-bgColor="#cef3f5" data-width="150">
  						</div>
  						<div class="col-md-3">
  							<input type="text" value="85" class="knob second" data-thickness=".3" data-inputColor="#333" data-fgColor="#b85e80" data-bgColor="#f8d2e0" data-width="150">
  						</div>
  					</div>
  				</div>
  			</div>

  			<div class="row">
  				<div class="col-md-6">
  					<div class="content-box-large">
		  				<div class="panel-heading">
							<div class="panel-title">Sample Chart</div>
							
							<div class="panel-options">
								<a href="#" data-rel="collapse"><i class="glyphicon glyphicon-refresh"></i></a>
								<a href="#" data-rel="reload"><i class="glyphicon glyphicon-cog"></i></a>
							</div>
						</div>
		  				<div class="panel-body">
		  					<div id="piechart1" style="width:100%;height:200px"></div>
		  				</div>
		  			</div>
  				</div>
  				<div class="col-md-6">
  					<div class="content-box-large">
		  				<div class="panel-heading">
							<div class="panel-title">Sample Chart</div>
							
							<div class="panel-options">
								<a href="#" data-rel="collapse"><i class="glyphicon glyphicon-refresh"></i></a>
								<a href="#" data-rel="reload"><i class="glyphicon glyphicon-cog"></i></a>
							</div>
						</div>
		  				<div class="panel-body">
		  					<div id="piechart2" style="width:100%;height:200px"></div>
		  				</div>
		  			</div>
  				</div>
  			</div>

  			<div class="row">
  				<div class="col-md-6">
  					<div class="content-box-large">
		  				<div class="panel-heading">
							<div class="panel-title">Sample Chart</div>
							
							<div class="panel-options">
								<a href="#" data-rel="collapse"><i class="glyphicon glyphicon-refresh"></i></a>
								<a href="#" data-rel="reload"><i class="glyphicon glyphicon-cog"></i></a>
							</div>
						</div>
		  				<div class="panel-body">
		  					<div id="catchart" style="width:100%;height:300px"></div>
		  				</div>
		  			</div>
  				</div>
  				<div class="col-md-6">
  					<div class="content-box-large">
		  				<div class="panel-heading">
							<div class="panel-title">Sample</div>
							
							<div class="panel-options">
								<a href="#" data-rel="collapse"><i class="glyphicon glyphicon-refresh"></i></a>
								<a href="#" data-rel="reload"><i class="glyphicon glyphicon-cog"></i></a>
							</div>
						</div>
		  				<div class="panel-body">
		  					<div id="timechart" style="width:100%;height:300px"></div>
		  				</div>
		  			</div>
  				</div>
  			</div>



</asp:Content>
