.class public final Lcom/koushikdutta/async/http/a/i;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public final a(Lcom/koushikdutta/async/y;Lcom/koushikdutta/async/a/a;)V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lcom/koushikdutta/async/c/g;

    invoke-direct {v0}, Lcom/koushikdutta/async/c/g;-><init>()V

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/c/g;->a(Lcom/koushikdutta/async/y;)Lcom/koushikdutta/async/b/c;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/http/a/j;

    invoke-direct {v1, p0, p2}, Lcom/koushikdutta/async/http/a/j;-><init>(Lcom/koushikdutta/async/http/a/i;Lcom/koushikdutta/async/a/a;)V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/b/c;->a(Lcom/koushikdutta/async/b/d;)Lcom/koushikdutta/async/b/c;

    .line 31
    return-void
.end method

.method public final a_()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/i;->a:Ljava/lang/String;

    return-object v0
.end method
