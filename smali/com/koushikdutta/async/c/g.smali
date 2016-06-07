.class public final Lcom/koushikdutta/async/c/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/koushikdutta/async/y;)Lcom/koushikdutta/async/b/c;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/y;",
            ")",
            "Lcom/koushikdutta/async/b/c",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    invoke-interface {p1}, Lcom/koushikdutta/async/y;->j()Ljava/lang/String;

    move-result-object v0

    .line 19
    new-instance v1, Lcom/koushikdutta/async/c/a;

    invoke-direct {v1}, Lcom/koushikdutta/async/c/a;-><init>()V

    .line 1018
    new-instance v2, Lcom/koushikdutta/async/v;

    invoke-direct {v2}, Lcom/koushikdutta/async/v;-><init>()V

    .line 1019
    new-instance v3, Lcom/koushikdutta/async/c/b;

    invoke-direct {v3, v1, p1}, Lcom/koushikdutta/async/c/b;-><init>(Lcom/koushikdutta/async/c/a;Lcom/koushikdutta/async/y;)V

    .line 1025
    new-instance v4, Lcom/koushikdutta/async/c/c;

    invoke-direct {v4, v1, v2}, Lcom/koushikdutta/async/c/c;-><init>(Lcom/koushikdutta/async/c/a;Lcom/koushikdutta/async/v;)V

    invoke-interface {p1, v4}, Lcom/koushikdutta/async/y;->a(Lcom/koushikdutta/async/a/b;)V

    .line 1032
    new-instance v4, Lcom/koushikdutta/async/c/d;

    invoke-direct {v4, v1, v3, v2}, Lcom/koushikdutta/async/c/d;-><init>(Lcom/koushikdutta/async/c/a;Lcom/koushikdutta/async/b/g;Lcom/koushikdutta/async/v;)V

    invoke-interface {p1, v4}, Lcom/koushikdutta/async/y;->b(Lcom/koushikdutta/async/a/a;)V

    .line 19
    new-instance v1, Lcom/koushikdutta/async/c/h;

    invoke-direct {v1, p0, v0}, Lcom/koushikdutta/async/c/h;-><init>(Lcom/koushikdutta/async/c/g;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Lcom/koushikdutta/async/b/c;->b(Lcom/koushikdutta/async/b/d;)Lcom/koushikdutta/async/b/d;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/b/c;

    return-object v0
.end method
