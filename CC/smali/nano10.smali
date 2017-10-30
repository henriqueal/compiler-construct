.class public Lnano10;
.super Ljava/lang/Object;
.source "nano10.java"


# static fields
.field public static m:I

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
    .line 6
    const/4 v0, 0x1

    sput v0, Lnano10;->n:I

    .line 7
    const/4 v0, 0x2

    sput v0, Lnano10;->m:I

    .line 8
    sget v0, Lnano10;->n:I

    sget v1, Lnano10;->m:I

    if-ne v0, v1, :cond_14

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget v1, Lnano10;->n:I

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(I)V

    .line 10
    :goto_13
    return-void

    .line 9
    :cond_14
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(I)V

    goto :goto_13
.end method
