const divContainer = document.querySelector('#elementToWorkOn');
let isCliked = true;

let showOrHide = function(){
    if(isCliked){
        divContainer.style.display = 'block';
        isCliked = false;
    }else{
        divContainer.style.display = 'none';
        isCliked = true;
    }

}