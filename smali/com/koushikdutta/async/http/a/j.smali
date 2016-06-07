.class final Lcom/koushikdutta/async/http/a/j;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/koushikdutta/async/a/a;

.field private synthetic b:Lcom/koushikdutta/async/http/a/i;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/a/i;Lcom/koushikdutta/async/a/a;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/koushikdutta/async/http/a/j;->b:Lcom/koushikdutta/async/http/a/i;

    iput-object p2, p0, Lcom/koushikdutta/async/http/a/j;->a:Lcom/koushikdutta/async/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 24
    check-cast p2, Ljava/lang/String;

    .line 1027
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/j;->b:Lcom/koushikdutta/async/http/a/i;

    iput-object p2, v0, Lcom/koushikdutta/async/http/a/i;->a:Ljava/lang/String;

    .line 1028
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/j;->a:Lcom/koushikdutta/async/a/a;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/a/a;->a(Ljava/lang/Exception;)V

    .line 24
    return-void
.end method
