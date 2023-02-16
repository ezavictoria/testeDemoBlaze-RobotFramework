*** Variables ***
${url}             https://www.demoblaze.com/
${addToCart}       xpath=//div[2]//a
${name}            id=name
${country}         id=country
${city}            id=city
${card}            id=card
${month}           id=month
${year}            id=year
${placeOrder}      css=.btn-success
${purchase}        xpath=//button[text()='Purchase']
${purchaseText}    css=.sweet-alert > h2
${confirm}         css=.confirm

${singUp}          id=signin2
${singUpButton}    xpath=//div[2]/div//button[2]
${username}        id=sign-username
${password}        id=sign-password

${login}           id=login2
${loginButton}     xpath=//div[3]/div//button[2]
${user}            id=loginusername
${pass}            id=loginpassword
${welcome}         id=nameofuser