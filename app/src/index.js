#!/usr/bin/env node

import express from "express";
import { inspect } from "util";

console.log(inspect(process.env));

const index = express();

const PORT=8000;

index.get('/', (req, res) => res.send('Hello World!'));

index.listen(PORT, () => console.log(`Example app listening on port ${PORT}!`));
