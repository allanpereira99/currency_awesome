// SPDX-License-Identifier: MIT
// Copyright (c) 2022 Allan Pereira <https://github.com/allanpereira99>

const axios = require('axios').default;
const api = 'https://economia.awesomeapi.com.br/';

class GetCurrency {
    static async last({ format, from, to }) {
        let data;
        let response = await axios.get(`${api}${format}/last/${from}-${to}`).catch((res) => res);
        if (response.data != undefined) {
            data = response.data
        }
        else {
            data = response.response.data
        }
        return new Promise((resolve) => {
            resolve(data)

        })

    }
    static async lastDailys(options) {
        const { format, from, to, days } = options;
        let data;
        let response = await axios.get(`${api}${format}/daily/${from}-${to}/${days}`).catch((res) => res);
        if (response.data != undefined) {
            data = response.data
        }
        else {
            data = response.response.data
        }
        return new Promise((resolve) => {
            resolve(data)

        })
    }
}
module.exports = GetCurrency;