.class public Lmicro09;
.super Ljava/lang/Object;
.source "micro09.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 7
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Digite o pre\u00e7o: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Ljava/lang/System;->console()Ljava/io/Console;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/Console;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 10
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Digite a venda: "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Ljava/lang/System;->console()Ljava/io/Console;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/Console;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 13
    const-wide v4, 0x407f400000000000L    # 500.0

    cmpg-double v4, v2, v4

    if-ltz v4, :cond_35

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    cmpg-double v4, v0, v4

    if-gez v4, :cond_3a

    :cond_35
    const-wide/16 v2, 0x0

    mul-double/2addr v2, v0

    add-double/2addr v0, v2

    .line 21
    :cond_39
    :goto_39
    return-void

    .line 16
    :cond_3a
    const-wide v4, 0x407f400000000000L    # 500.0

    cmpl-double v4, v2, v4

    if-ltz v4, :cond_4c

    const-wide v4, 0x4092c00000000000L    # 1200.0

    cmpg-double v4, v2, v4

    if-ltz v4, :cond_58

    :cond_4c
    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_5d

    const-wide/high16 v4, 0x4054000000000000L    # 80.0

    cmpg-double v4, v0, v4

    if-gez v4, :cond_5d

    :cond_58
    const-wide/16 v2, 0x0

    mul-double/2addr v2, v0

    sub-double/2addr v0, v2

    goto :goto_39

    .line 17
    :cond_5d
    const-wide v4, 0x4092c00000000000L    # 1200.0

    cmpl-double v2, v2, v4

    if-gez v2, :cond_6c

    const-wide/high16 v2, 0x4054000000000000L    # 80.0

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_39

    :cond_6c
    const-wide/16 v2, 0x0

    mul-double/2addr v2, v0

    sub-double/2addr v0, v2

    goto :goto_39
.end method
