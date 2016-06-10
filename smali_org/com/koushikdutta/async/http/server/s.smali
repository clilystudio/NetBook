.class public final Lcom/koushikdutta/async/http/server/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/http/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/http/a/a",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public final a(Lcom/koushikdutta/async/y;Lcom/koushikdutta/async/a/a;)V
    .locals 1

    .prologue
    .line 66
    invoke-interface {p1, p2}, Lcom/koushikdutta/async/y;->b(Lcom/koushikdutta/async/a/a;)V

    .line 67
    new-instance v0, Lcom/koushikdutta/async/H;

    invoke-direct {v0}, Lcom/koushikdutta/async/H;-><init>()V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/y;->a(Lcom/koushikdutta/async/a/b;)V

    .line 68
    return-void
.end method

.method public final a_()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method
