#!/bin/sh -e
if [ "$AVOCADO_PARALLEL_LINT_JOBS" ]; then
    PYLINT_OPTIONS="--jobs=$AVOCADO_PARALLEL_LINT_JOBS";
fi

PYLINT=$(which pylint-3 2>/dev/null || which pylint)

MODULES="avocado contrib examples scripts docs optional_plugins selftests"
${PYLINT} ${PYLINT_OPTIONS} --enable=R0401,W0101,W0102,W0104,W0105,W0106,W0107,W0108,W0109,W0111,W0120,W0122,W0123,W0124,W0125,W0126,W0127,W0128,W0129,W0143,W0150,W0199,W0201,W0211,W0221,W0222,W0223,W0231,W0232,W0233,W0235,W0236,W0301,W0311,W0312,W0401,W0402,W0404,W0406,W0407,W0410,W0601,W0602,W0603,W0604,W0611,W0612,W0613,W0614,W0621,W0622,W0623,W0631,W0632,W0641,W0642,W0640,W0702,W0705,W0706,W0711,W0715,W0716,W1113,W1114,W1115,W1116,W1201,W1202,W1203,W1300,W1301,W1302,W1303,W1304,W1305,W1306,W1307,W1308,W1309,W1401,W1402,W1404,W1405,W1501,W1503,W1505,W1506,W1507,W1508,W1509,W1510,W1601,W1602,W1603,W1604,W1605,W1606,W1607,W1608,W1609,W1610,W1611,W1612,W1613,W1614,W1615,W1616,W1617,W1621,W1622,W1623,W1624,W1625,W1626,W1627,W1628,W1629,W1630,W1634,W1635,W1636,W1640,W1642,W1643,W1644,W1645,W1646,W1647,W1648,W1649,W1650,W1651,W1652,W1653,W1656,W1657,W1658,W1659,W1660,W1661,W1662 ${MODULES}

MODULES="avocado contrib examples scripts docs optional_plugins"
${PYLINT} ${PYLINT_OPTIONS} --enable=W0212,W0703 ${MODULES}
