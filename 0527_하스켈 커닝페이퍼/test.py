def f1(x):
    return (x + 1, str(x) + "+1")


def f2(x):
    return (x + 2, str(x) + "+2")


def f3(x):
    return (x + 3, str(x) + "+3")


def unit(x):
    return (x, "Ops:")


def bind(t, f):
    res = f(t[0])
    return (res[0], t[1] + res[1] + ";")


def main():
    # 글루 코드
    x = int(input("정수 입력 :"))
    log = "Ops:"
    res, log1 = f1(x)
    log += log1 + ";"
    res, log2 = f2(res)
    log += log2 + ";"
    res, log3 = f3(res)
    log += log3 + ";"
    print(res, log)

    # unit bind 활용
    print(bind(bind(bind(unit(x), f1), f2), f3))


if __name__ == "__main__":
    main()
    # 정수 입력 : 3
    # 9 Ops: 3+1;4+2;6+3;
