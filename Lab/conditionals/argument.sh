#!/bin/bash
(( $1 -eq pizza )) || echo "pineapple"
(( $1 -eq !pizza)) || echo "i want pizza"
