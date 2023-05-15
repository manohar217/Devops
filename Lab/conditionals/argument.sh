#!/bin/bash
(( $1 == pizza )) || echo "pineapple"
(( $1 != pizza )) || echo "i want pizza"
