.class public Lnano03;
.super Ljava/lang/Object;
.source "nano03.java"


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
    .registers 2

    .prologue
    .line 6
    const/4 v0, 0x1

    sput v0, Lnano03;->n:I

    .line 7
    return-void
.end method
