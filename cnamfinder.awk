/^;/ || NF == 0 { next }

$4 == "CNAME"   { cn[$5] = (cn[$5] ? cn[$5] "," $1 : $1) }
$4 == "A"       { ip[$1] = (ip[$1] ? ip[$1] "," $5 : $5) }

END {
    for (i in ip) {
        if (cn[i])
            printf("%s (%s) = ", i, cn[i])
        else
            printf("%s = ", i)

        print ip[i]
    }
}
