function calculadora(){
    const operação = Number(prompt('escolha uma operação: \n 1 - soma (+) \n 2 - subtração (-) \n 3 - multiplicação (*) \n 4 - divisão real (/) \n 5 - divisão inteira (%) \n 6 - potenciação (**)'));

    console.log(operação);
}

//definir as variaveis 
let n1 = Number(prompt('insira o primeiro valor: '));
let n2 = Number(prompt('insira o segundo valor: '));
let resultado;

//declarando as funções 
Function: soma(){
    resultado = n1 + n2;
    alert(`${n1} + ${n2} = ${resultado}`)//aqui o alert é pra usar string e numeros juntos, usa crase neste caso
}

Function: subtração(){
    resultado = n1 - n2;
    alert(`${n1} - ${n2} = ${resultado}`) //aqui o alert é pra usar string e numeros juntos, usa crase neste caso
}

Function: multiplicação(){
    resultado = n1 * n2;
    alert(`${n1} * ${n2} = ${resultado}`) //aqui o alert é pra usar string e numeros juntos, usa crase neste caso
}

Function: divisãoreal(){
    resultado = n1 / n2;
    alert(`${n1} / ${n2} = ${resultado}`) //aqui o alert é pra usar string e numeros juntos, usa crase neste caso
}

Function: divisãointeira(){
    resultado = n1 % n2;
    alert(`o resto da divisão entre ${n1} e ${n2} é igual a ${resultado}`) //aqui o alert é pra usar string e numeros juntos, usa crase neste caso
}

Function: potenciação(){
    resultado = n1 ** n2;
    alert(`${n1} ** ${n2} = ${resultado}`) //aqui o alert é pra usar string e numeros juntos, usa crase neste caso
}
//criar agora um verificação de operação usando o if

if (operação == 1){
    soma();
    else (operação == 2){
        subtração();
        else (operação == 3){
            multiplicação();
            else (operação == 4){
                divisãoreal();
                else (operação == 5){
                    divisãointeira();
                    else (operação == 6){
                        potenciação();
                    }
                }
            }
        }
    }
}

calculadora();
