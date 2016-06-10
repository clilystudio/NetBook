.class final Lcom/koushikdutta/async/http/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/b/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/b/d",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/koushikdutta/async/a/a;

.field private synthetic b:Lcom/koushikdutta/async/http/a/b;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/a/b;Lcom/koushikdutta/async/a/a;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/koushikdutta/async/http/a/c;->b:Lcom/koushikdutta/async/http/a/b;

    iput-object p2, p0, Lcom/koushikdutta/async/http/a/c;->a:Lcom/koushikdutta/async/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 26
    check-cast p2, Lorg/json/JSONObject;

    .line 1030
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/c;->a:Lcom/koushikdutta/async/a/a;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/a/a;->a(Ljava/lang/Exception;)V

    .line 26
    return-void
.end method
