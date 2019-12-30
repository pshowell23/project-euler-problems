//Known languages
languages = ['Ruby', 'Go', 'JavaScript', 'Python']

function getRandomLang(arr){
    let randomNumber = Math.floor(Math.random() * arr.length);
    console.log(arr[randomNumber])
}

/*
* Randomly generate a language from known languages
* to solve new Project Euler problem
*/
getRandomLang(languages)
