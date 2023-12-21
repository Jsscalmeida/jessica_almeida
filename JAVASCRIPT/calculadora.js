function calculadora (){
    const operação = Number(prompt('escolha uma operação: \n 1 - soma \n 2 - divisão \n 3 - multiplicação'));

    if(!operação || operação >=7){
        alert('erro - operação inválida');
        calculadora();
        else{
            
            let n1 = Number(prompt('insira o primeiro valor:'));
let n2 = Number(prompt('insira o segundo valor:'));
let resultado;

function soma(){
    resultado = n1 + n2;
    alert(`${n1} + ${n2} = ${resultado}`)
    novaoperação();
}

function subtração(){
    resultado = n1 - n2;
    alert(`${n1} - ${n2} = ${resultado}`)
    novaoperação();
}

function multiplicação(){
    resultado = n1 * n2;
    alert(`${n1} * ${n2} = ${resultado}`)
    novaoperação();
}

function novaoperação(){
    let opção = prompt('deseja fazer outra operação?:\n 1 - Sim\n 2 - Não');
    if(opção = 1){
        calculadora();
        else if(opção = 2){
            alert('até mais');
            else{
                alert('digite uma opção válida');
                novaoperação();
            }
        }
    }
}
//if(operação = 1){
   // Soma();
    //else if (operação = 2){
       // subtração();
        // if(operação = 3){
       //     multiplicação();
        //}
    //}

//}

switch (operação){
    case 1:
        soma();
        break;
        case 2:
            subtração();
            break;
            case 3:
                multiplicação();
                break;
}
}

        }
    }

calculadora();
