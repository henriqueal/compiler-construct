.class public Lmicro03;
.super Ljava/lang/Object;
.source "micro03.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 6
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Digite um n\u00famero: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Ljava/lang/System;->console()Ljava/io/Console;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/Console;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 9
    const/16 v1, 0x64

    if-lt v0, v1, :cond_2b

    .line 10
    const/16 v1, 0xc8

    if-gt v0, v1, :cond_23

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "O n\u00famero est\u00e1 no intervalo entre 100 e 200"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 16
    :goto_22
    return-void

    .line 11
    :cond_23
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "O n\u00famero n\u00e3o est\u00e1 no intervalo entre 100 e 200"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_22

    .line 13
    :cond_2b
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "O n\u00famero n\u00e3o est\u00e1 no intervalo entre 100 e 200"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_22
.end method
