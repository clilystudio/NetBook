.class final Lcom/koushikdutta/async/c/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/a;


# instance fields
.field private synthetic a:Lcom/koushikdutta/async/b/g;

.field private synthetic b:Lcom/koushikdutta/async/v;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/c/a;Lcom/koushikdutta/async/b/g;Lcom/koushikdutta/async/v;)V
    .locals 0

    .prologue
    .line 32
    iput-object p2, p0, Lcom/koushikdutta/async/c/d;->a:Lcom/koushikdutta/async/b/g;

    iput-object p3, p0, Lcom/koushikdutta/async/c/d;->b:Lcom/koushikdutta/async/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 35
    if-eqz p1, :cond_0

    .line 36
    iget-object v0, p0, Lcom/koushikdutta/async/c/d;->a:Lcom/koushikdutta/async/b/g;

    .line 1124
    invoke-virtual {v0, p1, v3}, Lcom/koushikdutta/async/b/g;->b(Ljava/lang/Exception;Ljava/lang/Object;)Z

    .line 46
    :goto_0
    return-void

    .line 41
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/c/d;->a:Lcom/koushikdutta/async/b/g;

    iget-object v1, p0, Lcom/koushikdutta/async/c/d;->b:Lcom/koushikdutta/async/v;

    .line 1128
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/koushikdutta/async/b/g;->b(Ljava/lang/Exception;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    iget-object v1, p0, Lcom/koushikdutta/async/c/d;->a:Lcom/koushikdutta/async/b/g;

    .line 2124
    invoke-virtual {v1, v0, v3}, Lcom/koushikdutta/async/b/g;->b(Ljava/lang/Exception;Ljava/lang/Object;)Z

    goto :goto_0
.end method
