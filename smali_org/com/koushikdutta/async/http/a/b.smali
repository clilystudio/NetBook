.class public final Lcom/koushikdutta/async/http/a/b;
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
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/koushikdutta/async/http/a/b;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public final a(Lcom/koushikdutta/async/y;Lcom/koushikdutta/async/a/a;)V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/koushikdutta/async/c/e;

    invoke-direct {v0}, Lcom/koushikdutta/async/c/e;-><init>()V

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/c/e;->a(Lcom/koushikdutta/async/y;)Lcom/koushikdutta/async/b/c;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/http/a/c;

    invoke-direct {v1, p0, p2}, Lcom/koushikdutta/async/http/a/c;-><init>(Lcom/koushikdutta/async/http/a/b;Lcom/koushikdutta/async/a/a;)V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/b/c;->a(Lcom/koushikdutta/async/b/d;)Lcom/koushikdutta/async/b/c;

    .line 33
    return-void
.end method

.method public final a_()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method
