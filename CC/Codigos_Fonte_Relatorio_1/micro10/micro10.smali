.class public Lmicro10;
.super Ljava/lang/Object;
.source "micro10.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fatorial(I)I
    .registers 2

    .prologue
    .line 18
    if-gtz p0, :cond_4

    const/4 v0, 0x1

    .line 19
    :goto_3
    return v0

    :cond_4
    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Lmicro10;->fatorial(I)I

    move-result v0

    mul-int/2addr v0, p0

    goto :goto_3
.end method

.method public static main([Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 7
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Digite um numero: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Ljava/lang/System;->console()Ljava/io/Console;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/Console;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 10
    invoke-static {v0}, Lmicro10;->fatorial(I)I

    move-result v1

    .line 12
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "O fatorial de "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 13
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "\u00e9"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 14
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    .line 15
    return-void
.end method
