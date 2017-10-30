.class public Lnano09;
.super Ljava/lang/Object;
.source "nano09.java"


# static fields
.field public static n:I


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
    const/4 v1, 0x1

    .line 6
    sput v1, Lnano09;->n:I

    .line 7
    sget v0, Lnano09;->n:I

    if-ne v0, v1, :cond_f

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget v1, Lnano09;->n:I

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(I)V

    .line 9
    :goto_e
    return-void

    .line 8
    :cond_f
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(I)V

    goto :goto_e
.end method
