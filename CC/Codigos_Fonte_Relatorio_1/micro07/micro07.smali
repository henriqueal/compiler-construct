.class public Lmicro07;
.super Ljava/lang/Object;
.source "micro07.java"


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
    const/4 v1, 0x1

    .line 8
    move v0, v1

    .line 10
    :cond_2
    :goto_2
    if-ne v0, v1, :cond_4b

    .line 11
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Digite um n\u00famero: "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Ljava/lang/System;->console()Ljava/io/Console;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/Console;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 14
    if-lez v2, :cond_39

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Positivo"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 18
    :goto_20
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Deseja finalizar? (S/N)"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 19
    invoke-static {}, Ljava/lang/System;->console()Ljava/io/Console;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/Console;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 21
    const-string v3, "S"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    .line 15
    :cond_39
    if-nez v2, :cond_43

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "O n\u00famero \u00e9 igual a zero."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_20

    .line 16
    :cond_43
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Negativo"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_20

    .line 23
    :cond_4b
    return-void
.end method
