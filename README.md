# currency_awesome
## _currency_awesome is A simple api for querying currency quotes_

## Installation

currency_awesome requires [Node.js](https://nodejs.org/) v16+ to run.

Install.

```sh
npm -i currency_awesome
```

## Examples Usage
```sh
const api = require('currency_awesome');
api.lastDailys({format:"JSON", from : "USD", to : "BRL",days:2}).then(console.log)

/*
output:
[
  {
    code: 'USD',
    codein: 'BRL',
    name: 'Dólar Americano/Real Brasileiro',
    high: '5.1672',
    low: '5.1645',
    varBid: '-0.0024',
    pctChange: '-0.05',
    bid: '5.1646',
    ask: '5.1651',
    timestamp: '1664836696',
    create_date: '2022-10-03 19:38:16'
  },
  {
    high: '5.4264',
    low: '5.3295',
    varBid: '0.0125',
    pctChange: '0.23',
    bid: '5.4084',
    ask: '5.4094',
    timestamp: '1664571558'
  }
]
*/



```
## OR

```sh
const api = require('currency_awesome');
api.last({format:"JSON", from : "USD", to : "BRL"}).then(console.log)

/*
output:
{
  USDBRL: {
    code: 'USD',
    codein: 'BRL',
    name: 'Dólar Americano/Real Brasileiro',
    high: '5.1672',
    low: '5.1645',
    varBid: '-0.0024',
    pctChange: '-0.05',
    bid: '5.1646',
    ask: '5.1651',
    timestamp: '1664835985',
    create_date: '2022-10-03 19:26:25'
  }
}
*/

```


## Docs
[awesomeapi](https://docs.awesomeapi.com.br/api-de-moedas)

[complete list of combinations](https://economia.awesomeapi.com.br/xml/available)

[list of coin names](https://economia.awesomeapi.com.br/xml/available/uniq)


## License

MIT

## Author
[Allan Pereira](https://www.github.com/allanpereira99/)

**Free Software, Hell Yeah!**