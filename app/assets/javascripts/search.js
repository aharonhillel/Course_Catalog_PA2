function AJAXSearchForm(){
   $.ajax({
         url : "search_results",
         data : $("form").serialize()
    });
}
