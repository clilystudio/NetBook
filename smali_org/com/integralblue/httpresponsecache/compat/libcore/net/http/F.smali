.class final Lcom/integralblue/httpresponsecache/compat/libcore/net/http/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/http/b/b;


# instance fields
.field private synthetic a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;


# direct methods
.method constructor <init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/F;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 70
    const-string v0, "no-cache"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/F;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;

    invoke-static {v0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->a(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;Z)Z

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    const-string v0, "max-age"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/F;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;

    invoke-static {p2}, Lcom/arcsoft/hpay100/a/a;->e(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->a(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;I)I

    goto :goto_0

    .line 74
    :cond_2
    const-string v0, "max-stale"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/F;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;

    invoke-static {p2}, Lcom/arcsoft/hpay100/a/a;->e(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->b(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;I)I

    goto :goto_0

    .line 76
    :cond_3
    const-string v0, "min-fresh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 77
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/F;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;

    invoke-static {p2}, Lcom/arcsoft/hpay100/a/a;->e(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->c(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;I)I

    goto :goto_0

    .line 78
    :cond_4
    const-string v0, "only-if-cached"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/F;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;

    invoke-static {v0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->b(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;Z)Z

    goto :goto_0
.end method
