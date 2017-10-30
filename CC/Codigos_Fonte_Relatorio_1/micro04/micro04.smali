.class public Lmicro04;
.super Ljava/lang/Object;
.source "micro04.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 5
    move v1, v0

    .line 9
    :goto_2
    const/4 v2, 0x5

    if-ge v1, v2, :cond_25

    .line 10
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Digite um n\u00famero: "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Ljava/lang/System;->console()Ljava/io/Console;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/Console;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 13
    const/16 v3, 0xa

    if-lt v2, v3, :cond_22

    .line 14
    const/16 v3, 0x96

    if-gt v2, v3, :cond_22

    add-int/lit8 v0, v0, 0x1

    .line 9
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 19
    :cond_25
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ao total, foram digitados "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " n\u00fameros no intervalo entre 10 e 150"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 20
    return-void
.end method
