languages = ['Ruby', 'Go', 'JavaScript', 'Python']

function getRandomLang(arr){
    let randomNumber = Math.floor(Math.random() * arr.length);
    console.log(arr[randomNumber])
}

getRandomLang(languages)
