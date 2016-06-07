.class final Lcom/koushikdutta/async/http/a/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/a;


# instance fields
.field private synthetic a:Lcom/koushikdutta/async/a/a;

.field private synthetic b:Lcom/koushikdutta/async/v;

.field private synthetic c:Lcom/koushikdutta/async/http/a/k;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/a/k;Lcom/koushikdutta/async/a/a;Lcom/koushikdutta/async/v;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/koushikdutta/async/http/a/m;->c:Lcom/koushikdutta/async/http/a/k;

    iput-object p2, p0, Lcom/koushikdutta/async/http/a/m;->a:Lcom/koushikdutta/async/a/a;

    iput-object p3, p0, Lcom/koushikdutta/async/http/a/m;->b:Lcom/koushikdutta/async/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 77
    if-eqz p1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/m;->a:Lcom/koushikdutta/async/a/a;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/a/a;->a(Ljava/lang/Exception;)V

    .line 88
    :goto_0
    return-void

    .line 82
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/m;->c:Lcom/koushikdutta/async/http/a/k;

    iget-object v1, p0, Lcom/koushikdutta/async/http/a/m;->b:Lcom/koushikdutta/async/v;

    .line 1366
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/v;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-static {v1}, Lcom/koushikdutta/async/http/Multimap;->parseUrlEncoded(Ljava/lang/String;)Lcom/koushikdutta/async/http/Multimap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/a/k;->a(Lcom/koushikdutta/async/http/a/k;Lcom/koushikdutta/async/http/Multimap;)Lcom/koushikdutta/async/http/Multimap;

    .line 83
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/m;->a:Lcom/koushikdutta/async/a/a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/a/a;->a(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    iget-object v1, p0, Lcom/koushikdutta/async/http/a/m;->a:Lcom/koushikdutta/async/a/a;

    invoke-interface {v1, v0}, Lcom/koushikdutta/async/a/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
