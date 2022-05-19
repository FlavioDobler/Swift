import Cocoa
import Foundation

//1 - Escreva uma função para verificar se o número 5 aparece como o primeiro ou o último elemento em um determinado array de inteiros. O comprimento da matriz deve ser 1 ou mais. (Dica: declarar diferentes tipos de array, contendo um elemento de valor 5 pra testar)

var array : [Int] = [5,5,4,6,8,9,77]

func verificaCinco (_ numero: [Int]) -> Bool {
    if numero[0] == 5 || numero.last == 5{
    return true
    } else {
        return false
    }
    
}

var numero = verificaCinco(array)
print(numero)

//2 - Escreva uma função para verificar se o primeiro e o último elemento de um determinado array de inteiros são iguais. O comprimento da matriz deve ser 1 ou mais.

var numeros : [Int] = [10,2,3,4,5,6,7,10]

func verificarIgual (_ numero: [Int] ) -> Bool {
    if numero[0] == numero.last{
        return true
    } else{
        return false
    }
}

var teste = verificarIgual(numeros)
print(teste)


//3 - Escreva uma função para calcular a soma de todos os elementos de um determinado array de inteiros e comprimento 4.

var numSoma : [Int] = [20,20,20,20]

func somaArray (_ numero: [Int]) -> Int {
    return numero.reduce(0, +)
}

var resultado = somaArray(numSoma)
print(resultado)


//4 - Escreva uma função para criar uma nova string feita de uma cópia dos dois primeiros caracteres de uma determinada string. Se a string fornecida for menor que o comprimento 2, retorne o que houver.

var word : String = "Palavra"

func criarString (_ string: String) -> String {
    let primeira = string.first!
    let ultima = string.last!
    return "Primeira e ultima letra \(String(describing: primeira))\(String (describing: ultima))"
}
var verLetras = criarString(word)
print(verLetras)

//5 - Escreva uma função para criar uma nova string sem o primeiro e o último caractere de uma determinada string. O comprimento da string deve ser de pelo menos 2.

var novaPalavra = "anticonstitucionalissimamente"

func excluirLetras (_ palavra : String) -> String {
    return String(palavra.dropFirst().dropLast())
}

var testeString = excluirLetras(novaPalavra)
print(testeString)

//6-Escreva uma função para calcular a soma dos dois inteiros. Se os valores forem iguais retorne o triplo de sua soma.

func calcularValores (_ numero1: Int, _ numero2: Int) -> Int {
    if numero1 == numero2 {
        return (numero1 + numero2) * 3
    } else{
        return numero1 + numero2
    }
}

var result = calcularValores(20, 20)
print(result)

//7-Escreva uma função que aceite dois valores inteiros e retorne true se um deles for 20 ou se sua soma for 20.

func verValor (_ valor1 : Int, _ valor2 : Int) -> Bool {
    if (valor1 == 20 || valor2 == 20) || valor1 + valor2 == 20 {
        return true
    } else {
        return false
    }
}

var testando = verValor(10, 10)
print(testando)

