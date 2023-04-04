#!/bin/bash

# Solicita ao usuário a entrada dos dois valores
read -p "Digite o primeiro valor: " valor1
read -p "Digite o segundo valor: " valor2

# Valida se os valores foram informados
if [ -z "$valor1" ] || [ -z "$valor2" ]
then
  echo "ERRO: Pelo menos um dos valores não foi informado."
  exit 1
fi

# Exibe o menu de operações para o usuário
echo "Escolha uma operação:"
echo "1 - Soma"
echo "2 - Subtração"
echo "3 - Multiplicação"
echo "4 - Divisão"
read -p "Opção: " opcao

# Realiza a operação escolhida pelo usuário
case $opcao in
  1)
    resultado=$((valor1 + valor2))
    operacao="+"
    ;;
  2)
    resultado=$((valor1 - valor2))
    operacao="-"
    ;;
  3)
    if [ "$valor1" -eq 0 ] || [ "$valor2" -eq 0 ]
    then
      echo "ERRO: Não é possível realizar multiplicação por 0."
      exit 1
    fi
    resultado=$((valor1 * valor2))
    operacao="*"
    ;;
  4)
    if [ "$valor1" -eq 0 ] || [ "$valor2" -eq 0 ]
    then
      echo "ERRO: Não é possível realizar divisão por 0."
      exit 1
    fi
    resultado=$((valor1 / valor2))
    resto=$((valor1 % valor2))
    operacao="/"
    if [ "$resto" -eq 0 ]
    then
      echo "$valor1 $operacao $valor2 = $resultado (divisão exata)"
    else
      echo "$valor1 $operacao $valor2 = $resultado com resto $resto"
    fi
    exit 0
    ;;
  *)
    echo "ERRO: Opção inválida."
    exit 1
    ;;
esac

# Exibe o resultado da operação
echo "$valor1 $operacao $valor2 = $resultado"

