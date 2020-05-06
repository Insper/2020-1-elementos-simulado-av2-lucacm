# 2020-2 AV2

> SIMULADO

Conteúdo:
   
- Circuitos Síncronos
- Arquitetura de Computadores (Z01)
- Assembly

| Pontos HW | Pontos SW |
| -------   | ------    |
| 25        | 45        |

Avaliação 2 de Elementos de Sistemas. Duas partes: Teoria e Prática, você deve gerenciar o tempo disponível como quiser.

- **Trabalhar sozinho**
- **120 minutos**
- **Ficar conectado no canal geral (para ouvir instruções)**

### Começando

Você deve:

1. clonar o seu repositório (e trabalhar nele)
1. editar o arquivo `ALUNO.json`
1. não esqueça de dar `commit` e `push`


## PARTE 1 - Teoria

| Pontos HW | Pontos SW |
| -------   | ------    |
| 25        | 10        |

Questões teóricas de:

- Circuitos síncronos
    - Lógica Sequencial 
    - Componentes síncronos 
    - Projeto D 
- Z01
    - Entendimento do hardware
    - Mapa de memória
    - jump
    
> Usar como base a lista de exercícios: [`Lógica Sequencial - 1`](https://docs.google.com/forms/d/e/1FAIpQLSdGuoLR1Re3aok6I6adChgaDuMg0-dJaA7FF2gK5MLIGReg3g/viewform)

## PARTE 2 - Prática - SW

| Pontos HW | Pontos SW |
| -------   | ------    |
| 0         | 35        |

As questões de hardware (`.vhd`) devem ser implementadas nos arquivos localizados na pasta `src/rtl`, as questões de software (`nasm`) devem ser implementadas nos arquivos localizados em `src/nasm`. Para executar o teste tanto de HW quanto de SW é necessário executar o script:

```
./testeAV2.py
```

> Vocês devem editar o arquivo `tests/config.txt` para inserir o módulo no teste.

**LEMBRE DE REALIZAR UM COMMIT (A CADA QUESTÃO) E DAR PUSH AO FINALIZAR**

### 1. (10 SW) pseudo

| Arquivo               | `/src/nasm/pseudo.nasm` |
|-----------------------|------------------------|
| Deve passar no teste? | SIM                    |

Transcreva para assembly do Z01 o pseudo código a seguir:

```python
 if ( RAM[1] == 1 && RAM[2] > 2 ):
     RAM[5] = 1
 else
     RAM5[6] = -2
```

### 2. (10 SW) LED

| Arquivo               | `/src/nasm/SWeLED.nasm` |
|-----------------------|------------------------|
| Deve passar no teste? | SIM                    |

Faça os LEDs exibirem:
 
```
LED = SW9 OFF ON ON ON OFF !SW3 !SW2 ON OFF
```

### 3. (15 SW) FillMem

| Arquivo               | `/src/nasm/fillMem.nasm` |
|-----------------------|------------------------|
| Deve passar no teste? | SIM                    |

Preencher a memória RAM com um contador progresssivo (começando em `0`). O valor da RAM[2] possui o tamanho do vetor que deve começar em RAM[3].
  
```
  antes       | depois
              |
  RAM[0]:     | RAM[0]:
  RAM[1]:     | RAM[1]:
  RAM[2]:  4  | RAM[2]:  4
  RAM[3]:  0  | RAM[3]:  0 -
  RAM[4]:  0  | RAM[4]:  1 | vetor
  RAM[5]:  0  | RAM[5]:  2 |
  RAM[6]:  0  | RAM[6]:  3 -
  RAM[7]:  0  | RAM[7]:  0
```


### 4. Extra (para estudo)

| Arquivo               | `/src/nasm/fibonacci.nasm` |
|-----------------------|----------------------------|
| Deve passar no teste? | SIM                        |

Fazer a série de fibonacci, descrição no arquivo.
