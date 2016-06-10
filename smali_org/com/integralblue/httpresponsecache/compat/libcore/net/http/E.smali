.class public final Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

.field private b:Z

.field private c:I

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/URI;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v0, -0x1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->c:I

    .line 34
    iput v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->d:I

    .line 35
    iput v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->e:I

    .line 53
    iput v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->h:I

    .line 66
    iput-object p2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    .line 68
    new-instance v1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/F;

    invoke-direct {v1, p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/F;-><init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;)V

    .line 84
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->e()I

    move-result v2

    if-ge v0, v2, :cond_d

    .line 85
    invoke-virtual {p2, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-virtual {p2, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->b(I)Ljava/lang/String;

    move-result-object v3

    .line 87
    const-string v4, "Cache-Control"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 88
    invoke-static {v3, v1}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/lang/String;Lcom/koushikdutta/async/http/b/b;)V

    .line 84
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_1
    const-string v4, "Pragma"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 90
    const-string v2, "no-cache"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    iput-boolean v5, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->b:Z

    goto :goto_1

    .line 93
    :cond_2
    const-string v4, "If-None-Match"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 94
    iput-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->p:Ljava/lang/String;

    goto :goto_1

    .line 95
    :cond_3
    const-string v4, "If-Modified-Since"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 96
    iput-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->o:Ljava/lang/String;

    goto :goto_1

    .line 97
    :cond_4
    const-string v4, "Authorization"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 98
    iput-boolean v5, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->g:Z

    goto :goto_1

    .line 99
    :cond_5
    const-string v4, "Content-Length"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 101
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->h:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 103
    :catch_0
    move-exception v2

    goto :goto_1

    .line 104
    :cond_6
    const-string v4, "Transfer-Encoding"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 105
    iput-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->i:Ljava/lang/String;

    goto :goto_1

    .line 106
    :cond_7
    const-string v4, "User-Agent"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 107
    iput-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->j:Ljava/lang/String;

    goto :goto_1

    .line 108
    :cond_8
    const-string v4, "Host"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 109
    iput-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->k:Ljava/lang/String;

    goto :goto_1

    .line 110
    :cond_9
    const-string v4, "Connection"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 111
    iput-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->l:Ljava/lang/String;

    goto :goto_1

    .line 112
    :cond_a
    const-string v4, "Accept-Encoding"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 113
    iput-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->m:Ljava/lang/String;

    goto :goto_1

    .line 114
    :cond_b
    const-string v4, "Content-Type"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 115
    iput-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->n:Ljava/lang/String;

    goto/16 :goto_1

    .line 116
    :cond_c
    const-string v4, "Proxy-Authorization"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    iput-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->q:Ljava/lang/String;

    goto/16 :goto_1

    .line 120
    :cond_d
    return-void
.end method

.method static synthetic a(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;I)I
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->c:I

    return p1
.end method

.method static synthetic a(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;Z)Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->b:Z

    return v0
.end method

.method static synthetic b(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;I)I
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->d:I

    return p1
.end method

.method static synthetic b(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;Z)Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->f:Z

    return v0
.end method

.method static synthetic c(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;I)I
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->e:I

    return p1
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .prologue
    .line 211
    iget v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    const-string v1, "Content-Length"

    invoke-virtual {v0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->c(Ljava/lang/String;)V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    const-string v1, "Content-Length"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iput p1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->h:I

    .line 216
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    const-string v1, "User-Agent"

    invoke-virtual {v0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->c(Ljava/lang/String;)V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    const-string v1, "User-Agent"

    invoke-virtual {v0, v1, p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iput-object p1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->j:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public final a(Ljava/util/Date;)V
    .locals 3

    .prologue
    .line 259
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    const-string v1, "If-Modified-Since"

    invoke-virtual {v0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->c(Ljava/lang/String;)V

    .line 262
    :cond_0
    invoke-static {p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/k;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 263
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    const-string v2, "If-Modified-Since"

    invoke-virtual {v1, v2, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->o:Ljava/lang/String;

    .line 265
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 285
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 286
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 287
    const-string v3, "Cookie"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "Cookie2"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 288
    :cond_1
    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v3, v1, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->a(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 291
    :cond_2
    return-void
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 123
    const-string v0, "chunked"

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    const-string v1, "Host"

    invoke-virtual {v0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->c(Ljava/lang/String;)V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    const-string v1, "Host"

    invoke-virtual {v0, v1, p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iput-object p1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->k:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 127
    const-string v0, "close"

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final c()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    const-string v1, "Connection"

    invoke-virtual {v0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->c(Ljava/lang/String;)V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    const-string v1, "Connection"

    invoke-virtual {v0, v1, p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iput-object p1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->l:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    const-string v1, "Accept-Encoding"

    invoke-virtual {v0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->c(Ljava/lang/String;)V

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    const-string v1, "Accept-Encoding"

    invoke-virtual {v0, v1, p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iput-object p1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->m:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->b:Z

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->c:I

    return v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->n:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->c(Ljava/lang/String;)V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1, p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iput-object p1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->n:Ljava/lang/String;

    .line 256
    return-void
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->d:I

    return v0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    const-string v1, "If-None-Match"

    invoke-virtual {v0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->c(Ljava/lang/String;)V

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    const-string v1, "If-None-Match"

    invoke-virtual {v0, v1, p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iput-object p1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->p:Ljava/lang/String;

    .line 273
    return-void
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->e:I

    return v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->f:Z

    return v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->g:Z

    return v0
.end method

.method public final j()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->h:I

    return v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final q()V
    .locals 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    const-string v1, "Transfer-Encoding"

    invoke-virtual {v0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->c(Ljava/lang/String;)V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    const-string v1, "Transfer-Encoding"

    const-string v2, "chunked"

    invoke-virtual {v0, v1, v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v0, "chunked"

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->i:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public final r()Z
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->o:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->p:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
