.class public final Lcom/koushikdutta/async/c/e;
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
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/koushikdutta/async/y;)Lcom/koushikdutta/async/b/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/y;",
            ")",
            "Lcom/koushikdutta/async/b/c",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    new-instance v0, Lcom/koushikdutta/async/c/g;

    invoke-direct {v0}, Lcom/koushikdutta/async/c/g;-><init>()V

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/c/g;->a(Lcom/koushikdutta/async/y;)Lcom/koushikdutta/async/b/c;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/c/f;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/c/f;-><init>(Lcom/koushikdutta/async/c/e;)V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/b/c;->b(Lcom/koushikdutta/async/b/d;)Lcom/koushikdutta/async/b/d;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/b/c;

    return-object v0
.end method
