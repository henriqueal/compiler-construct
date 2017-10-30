.class public Lmicro05;
.super Ljava/lang/Object;
.source "micro05.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 5
    move v0, v3

    move v1, v3

    move v4, v3

    .line 8
    :goto_4
    const/4 v2, 0x5

    if-ge v4, v2, :cond_54

    .line 9
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Digite o nome: "

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Ljava/lang/System;->console()Ljava/io/Console;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/Console;->readLine()Ljava/lang/String;

    .line 12
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "H - homem ou M - mulher: "

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 13
    invoke-static {}, Ljava/lang/System;->console()Ljava/io/Console;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/Console;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 15
    const/4 v2, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_92

    :cond_2c
    :goto_2c
    packed-switch v2, :pswitch_data_9c

    .line 25
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Sexo s\u00f3 pode ser H ou M!"

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 8
    :goto_36
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_4

    .line 15
    :sswitch_3a
    const-string v6, "M"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    move v2, v3

    goto :goto_2c

    :sswitch_44
    const-string v6, "H"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    const/4 v2, 0x1

    goto :goto_2c

    .line 17
    :pswitch_4e
    add-int/lit8 v1, v1, 0x1

    .line 18
    goto :goto_36

    .line 21
    :pswitch_51
    add-int/lit8 v0, v0, 0x1

    .line 22
    goto :goto_36

    .line 30
    :cond_54
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Foram inseridos "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " homens."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 31
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Foram inseridos "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mulheres."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 32
    return-void

    .line 15
    nop

    :sswitch_data_92
    .sparse-switch
        0x48 -> :sswitch_44
        0x4d -> :sswitch_3a
    .end sparse-switch

    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_4e
        :pswitch_51
    .end packed-switch
.end method
