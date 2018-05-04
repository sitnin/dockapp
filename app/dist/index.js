#!/usr/bin/env node
"use strict";

var _express = require("express");

var _express2 = _interopRequireDefault(_express);

var _util = require("util");

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

console.log((0, _util.inspect)(process.env));

const index = (0, _express2.default)();

const PORT = 8000;

index.get('/', (req, res) => res.send('Hello World!'));

index.listen(PORT, () => console.log(`Example app listening on port ${PORT}!`));