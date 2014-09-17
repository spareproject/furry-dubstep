#!/bin/env bash
openssl req -newkey rsa:4096 -x509 -days 365 -nodes -out spareproject.pem -keyout spareproject.key


