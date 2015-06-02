#!/bin/bash

(sleep 1s && echo -n i > /tmp/ctl)&
(sleep 1s && echo -n i > /tmp/ctl)&
(sleep 1s && echo -n i > /tmp/ctl)&
(sleep 2s && echo -n p > /tmp/ctl)&
