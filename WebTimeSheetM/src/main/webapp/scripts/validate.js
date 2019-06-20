$(document).ready(function() {
  $("#signupFormM").validate({
	    rules: {
	    	idManager: {
		        required: true
		      },
	    	managerName: {
	        required: true
	      },
	      managerPassword: {
	        required: true,
	      }
	    },
	    messages: {
	    	idManager:{
		        required:"Scegli ID Manager"
		      },
	    	managerName:{
	        required:"Inserisci nome Manager"
	      },
	      managerPassword:{
	        required:"Inserisci password"
	      }
	    }
	    
  });
});




$(document).ready(function() {
	  $("#signupFormD").validate({
		    rules: {
		    	idDipendente: {
			        required: true
			      },
			      nomeDipendente: {
		        required: true
		      },
		      passwordDipendente: {
		        required: true,
		      }
		    },
		    messages: {
		    	idDipendente:{
			        required:"Scegli ID Dipendente"
			      },
			      nomeDipendente:{
		        required:"Inserisci nome Dipendente"
		      },
		      passwordDipendente:{
		        required:"Inserisci password"
		      }
		    }
		    
	  });
	});
