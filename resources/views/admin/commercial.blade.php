@extends('crudbooster::admin_template')
<?php 
$clients=DB::select(
	'SELECT clients.id FROM cms_users 
	INNER JOIN clients 
	ON cms_users.id=clients.Commercial 
	WHERE cms_users.email = "'.$_COOKIE["COOKIE"].'"');
$note=DB::select(
	'SELECT memo.id FROM cms_users 
	INNER JOIN memo 
	ON cms_users.id=memo.Commercial_id 
	WHERE cms_users.email = "'.$_COOKIE["COOKIE"].'"');
$commandes=DB::select(
	'SELECT commandes.id FROM cms_users 
	INNER JOIN commandes 
	ON cms_users.id=commandes.Commercial 
	WHERE cms_users.email = "'.$_COOKIE["COOKIE"].'"');
$RDV=DB::select(
	'SELECT RDV.id FROM cms_users 
	INNER JOIN RDV 
	ON cms_users.id=RDV.Commercial 
	WHERE cms_users.email = "'.$_COOKIE["COOKIE"].'"');
	?>
	@section('content')

	<div class="col-lg-3 connectedSortable">
		<div class="border-box">
			<div class="small-box bg-green">
				<div class="inner inner-box">
					<h3>
						<?php 
						if (!empty($clients)) {
							echo count($clients);
						}else {

							echo "0";
						}
						
						?>
					</h3>
					<div>Client(s)!</div>
				</div>
				<div class="icon">
					<i class="ion ion-person-stalker"></i>
				</div>

				<a href="clients" class="small-box-footer">
					<span >Voir Details</span>
					<i class="fa fa-arrow-circle-right"></i>
				</a>
			</div>
		</div>
	</div>
	<div class="col-lg-3 col-md-6 connectedSortable">
		<div class="border-box">
			<div class="small-box bg-blue">
				<div class="inner inner-box">
					<h3>
						<?php 
						if (!empty($commandes)) {
							echo count($commandes);
						}else {

							echo "0";
						}
						
						?> 
					</h3>
					<div>Commande(s)!</div>
				</div>
				<div class="icon">
					<i class="ion ion-android-clipboard"></i>
				</div>
				<a href="commandes28" class="small-box-footer">
					<span >Voir Details</span>
					<i class="fa fa-arrow-circle-right"></i>
				</a>
			</div>
		</div>
	</div>
	<div class="col-lg-3 col-md-6 connectedSortable">
		<div class="border-box">
			<div class="small-box bg-yellow">
				<div class="inner inner-box">
					<h3>
						<?php 
						if (!empty($RDV)) {
							echo count($RDV);
						}else {

							echo "0";
						}
						
						?> 
					</h3>
					<div>Rendez-vous!</div>
				</div>
				<div class="icon">
					<i class="ion ion-ios-calendar-outline"></i>
				</div>
				<a href="RDV" class="small-box-footer">
					<span >Voir Details</span>
					<i class="fa fa-arrow-circle-right"></i>
				</a>
			</div>
		</div>
	</div>
	<div class="col-lg-3 connectedSortable">
		<div class="border-box">
			<div class="small-box bg-red">
				<div class="inner inner-box">
					<h3>
						<?php 
						if (!empty($note)) {
							echo count($note);
						}else {

							echo "0";
						}
						
						?>
					</h3>
					<div>Note(s)!</div>
				</div>
				<div class="icon">
					<i class="ion ion-clipboard"></i>
				</div>

				<a href="memo" class="small-box-footer">
					<span >Voir Details</span>
					<i class="fa fa-arrow-circle-right"></i>
				</a>
			</div>
		</div>
	</div>
	<div class="row" style="display: inline-flex;">
	<div>
		<a href="http://www.sodel.pro/">
		<img src="{{URL::asset('Sodelpro.png') }}" alt="Logo Sodel pro" style="width: 10em; margin-left: 2em;">			
		</a>		
	</div>
	<div>
		<a href="http://www.monacor.fr">
		<img src="{{URL::asset('monacor.png') }}" alt="Logo Sodel pro" style="width: 10em; margin-left: 2em;">			
		</a>		
	</div>
	<div>
		<a href="https://www.monacor.com/de-de/monacorinternational">
		<img src="{{URL::asset('monacor-inter.png') }}" alt="Logo Sodel pro" style="width: 10em; margin-left: 2em;">			
		</a>		
	</div>
	<div>
		<a href="http://www.dune-sono.com/">
		<img src="{{URL::asset('cloud.png') }}" alt="Logo Sodel pro" style="width: 10em; margin-left: 2em;">			
		</a>		
	</div>
	<div>
		<a href="http://www.tronios.com/fr">
		<img src="{{URL::asset('tronios.png') }}" alt="Logo Sodel pro" style="width: 10em; margin-left: 2em;">			
		</a>		
	</div>
	<div>
		<a href="http://www.monacor.fr/jts.html">
		<img src="{{URL::asset('jts.png') }}" alt="Logo Sodel pro" style="width: 10em; margin-left: 2em;">			
		</a>		
	</div>
	</div>

	@endsection 