// concept from https://www.youtube.com/watch?v=zvLFXtiGHqM
//const so cant be updated nor re declared
  const search = document.querySelector('#search-products'); 
  const shopContainer = document.querySelector('.shop-container');
  const products = shopContainer.querySelectorAll('.product-card');

  //search input event
  search.addEventListener('input',searchEvent);

  //filter items

  function searchEvent(i){

    //convert textt value to lowercase - not realy needed, needed for code to work essentially
    const text = i.target.value.toLowerCase();
    
    //get the products in Array
   
    //convert products to an iterable array, takes child from products (.product card class) = code class an finds the text content, if the content is 
    Array.from(products).forEach(function(product){
        const productCode = product.children[4].textContent;
        var errorMsg = document.getElementById("error");
        //console.log(product)


        if(productCode.indexOf(text) != -1){
            product.style.display = "block";
        }
        //dont show the product cards
        else{
            product.style.display = "none";
        }
        // if the product cards are not visible, show the error msg, if they are visible, hide the error msg
        //partial solution found on stack overflow - https://stackoverflow.com/questions/66782301/how-we-can-check-if-all-the-div-are-displayed-none
        /* previous code that was causing me problems (would show "No porducts found" even when i had two products shown) 
        if(product.style.display == "none"){
            errorMsg.style.display = "block";
            errorMsg.style.color = "red";
        }*/

        const AllDivsDisplayNone = (divs) => {
            let allDisplayNone = true;
            for (let i in divs) {
              if (divs[i].style.display !== "none") {
                allDisplayNone = false;
                break;
              }
            }
            return allDisplayNone;
          };
          const check = Array.from(document.querySelectorAll(".product-card"));
          const productDiv = AllDivsDisplayNone(check);

        if(productDiv ){
            errorMsg.style.display = "block";
            errorMsg.style.color = "red";
        }
        else if(product.style.display == "block"){
            errorMsg.style.display = "none";
        }
    })
  }

