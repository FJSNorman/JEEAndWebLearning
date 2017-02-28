(function() {
	'use strict';

	var testApp = angular.module('testApp', []);
	
	testApp.controller("TestController", function(){
		this.products = games;
	});
	
	testApp.controller('GalleryController', function() {
		this.current = 0;
	    
	    this.setCurrent = function(value){
	        if(value){
	            this.current = value;
	        } else {
	            this.current = 0;        
	        }
	    };
	});
	
	testApp.controller("TabController", function(){
		this.tab = 1;

		this.setTab = function(newValue) {
			this.tab = newValue;
		};

		this.isSet = function(value) {
			return this.tab === value;
		};
	});
	
	var games = [
	    {
	    	name: "Bloodborne",
	    	price: 299,
	    	description: "Difficult as fuck RPG",
	    	images: [
	    	    "static/images/test/bb01.jpg",
	    	    "static/images/test/bb02.jpg",
	    	    "static/images/test/bb03.jpg"
	    	]
	    },
	    {
	    	name: "Grim Dawn",
	    	price: 220.89,
	    	description: "Isometric action RPG, true Diablo 3",
	    	images: [
	    	    "static/images/test/gd01.jpg",
	    	    "static/images/test/gd02.jpg"
	    	]
	    },
	    {
	    	name: "Skyrim",
	    	price: 350.5,
	    	description: "Fifth installment of The Elder Scrolls saga, AKA The greates fucking game of all times",
	    	images: [
	    	    "static/images/test/sky01.jpg",
	    	    "static/images/test/sky02.jpg",
	    	    "static/images/test/sky03.jpg"
	    	]
	    }
	];

})();