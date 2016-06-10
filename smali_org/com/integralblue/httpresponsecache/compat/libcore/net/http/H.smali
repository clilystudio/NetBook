.class final Lcom/integralblue/httpresponsecache/compat/libcore/net/http/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/http/b/b;


# instance fields
.field private synthetic a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;


# direct methods
.method constructor <init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/H;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 134
    const-string v0, "no-cache"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/H;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;

    invoke-static {v0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->a(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;Z)Z

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    const-string v0, "no-store"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/H;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;

    invoke-static {v0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->b(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;Z)Z

    goto :goto_0

    .line 138
    :cond_2
    const-string v0, "max-age"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 139
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/H;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;

    invoke-static {p2}, Lcom/arcsoft/hpay100/a/a;->e(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->a(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;I)I

    goto :goto_0

    .line 140
    :cond_3
    const-string v0, "s-maxage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 141
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/H;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;

    invoke-static {p2}, Lcom/arcsoft/hpay100/a/a;->e(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->b(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;I)I

    goto :goto_0

    .line 142
    :cond_4
    const-string v0, "public"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 143
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/H;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;

    invoke-static {v0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->c(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;Z)Z

    goto :goto_0

    .line 144
    :cond_5
    const-string v0, "must-revalidate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/H;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;

    invoke-static {v0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->d(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;Z)Z

    goto :goto_0
.end method
