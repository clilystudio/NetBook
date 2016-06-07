.class final Lcom/koushikdutta/async/c/f;
.super Lcom/koushikdutta/async/b/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/b/h",
        "<",
        "Lorg/json/JSONObject;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/c/e;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/koushikdutta/async/b/h;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 17
    check-cast p1, Ljava/lang/String;

    .line 1020
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1128
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/koushikdutta/async/b/g;->b(Ljava/lang/Exception;Ljava/lang/Object;)Z

    .line 17
    return-void
.end method
