# Ping-Sweep

O script ping_sweep.sh é uma ferramenta simples de varredura de ping projetada em bash para verificar a disponibilidade de hosts em um intervalo de endereços IP. Ele utiliza o comando ping para enviar uma única solicitação de ping a cada host no intervalo especificado.

<br>

---

<br>

## **Modo de uso**

```bash
./ping_sweep.sh <IP_inicial> <IP_final>
```

## **Exemplo**

```bash
./ping_sweep.sh 37.59.174.224 37.59.174.239
```

## **Exemplo de saída**

```bash
-----------------------------
| Pk's Academy - Ping Sweep |
-----------------------------
Host 37.59.174.224 está respondendo.
Host 37.59.174.225 está respondendo.
Host 37.59.174.226 não está respondendo.
Host 37.59.174.227 está respondendo.
...
```

<br>

---

<br>


## **Funcionalidades**

1. Verifica a disponibilidade de hosts em um intervalo de endereços IP.
2. Fornece feedback visual, indicando hosts que estão respondendo e hosts que não estão respondendo.

<br>

---

<br>

## **Observação**

O script utiliza o comando ping para realizar a varredura de hosts.

<br>

---

<br>

## **Avisos**

1. O uso indevido desta ferramenta pode violar leis e regulamentos locais. Certifique-se de compreender e seguir as leis antes de realizar qualquer teste de segurança.
2. Este script deve ser usado apenas em ambientes autorizados e para fins educacionais.
3. Certifique-se de ter permissão adequada antes de realizar testes em sistemas ou redes.
4. A utilização irresponsável de ferramentas de varredura de ping pode resultar em consequências legais.








































