.class public Lcom/koushikdutta/async/http/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/view/menu/h;
.implements Landroid/support/v7/internal/view/menu/v;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/support/v7/internal/view/menu/MenuBuilder;

.field private c:Landroid/view/View;

.field private d:Landroid/support/v7/internal/view/menu/s;

.field private e:Landroid/support/v7/widget/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1070
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/koushikdutta/async/http/a;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    .line 1071
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1085
    sget v4, Landroid/support/v7/appcompat/R$attr;->popupMenuStyle:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/http/a;-><init>(Landroid/content/Context;Landroid/view/View;III)V

    .line 1086
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;III)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 1106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1107
    iput-object p1, p0, Lcom/koushikdutta/async/http/a;->a:Landroid/content/Context;

    .line 1108
    new-instance v0, Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-direct {v0, p1}, Landroid/support/v7/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/a;->b:Landroid/support/v7/internal/view/menu/MenuBuilder;

    .line 1109
    iget-object v0, p0, Lcom/koushikdutta/async/http/a;->b:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->a(Landroid/support/v7/internal/view/menu/h;)V

    .line 1110
    iput-object p2, p0, Lcom/koushikdutta/async/http/a;->c:Landroid/view/View;

    .line 1111
    new-instance v0, Landroid/support/v7/internal/view/menu/s;

    iget-object v2, p0, Lcom/koushikdutta/async/http/a;->b:Landroid/support/v7/internal/view/menu/MenuBuilder;

    move-object v1, p1

    move-object v3, p2

    move v5, p4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/internal/view/menu/s;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/a;->d:Landroid/support/v7/internal/view/menu/s;

    .line 1112
    iget-object v0, p0, Lcom/koushikdutta/async/http/a;->d:Landroid/support/v7/internal/view/menu/s;

    invoke-virtual {v0, p3}, Landroid/support/v7/internal/view/menu/s;->a(I)V

    .line 1113
    iget-object v0, p0, Lcom/koushikdutta/async/http/a;->d:Landroid/support/v7/internal/view/menu/s;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/s;->a(Landroid/support/v7/internal/view/menu/v;)V

    .line 1114
    return-void
.end method

.method public static a(Lcom/koushikdutta/async/y;Lcom/koushikdutta/async/http/b/e;Z)Lcom/koushikdutta/async/y;
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    .line 67
    :try_start_0
    const-string v0, "Content-Length"

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/b/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    move-wide v2, v0

    .line 73
    :goto_0
    cmp-long v0, v4, v2

    if-eqz v0, :cond_4

    .line 74
    cmp-long v0, v2, v8

    if-gez v0, :cond_1

    .line 75
    invoke-interface {p0}, Lcom/koushikdutta/async/y;->i()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/http/BodyDecoderException;

    const-string v2, "not using chunked encoding, and no content-length found."

    invoke-direct {v1, v2}, Lcom/koushikdutta/async/http/BodyDecoderException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/b;->a(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/Exception;)Lcom/koushikdutta/async/http/b;

    move-result-object v0

    .line 76
    invoke-virtual {v0, p0}, Lcom/koushikdutta/async/http/b;->a(Lcom/koushikdutta/async/y;)V

    move-object p0, v0

    .line 118
    :cond_0
    :goto_1
    return-object p0

    .line 70
    :catch_0
    move-exception v0

    move-wide v2, v4

    goto :goto_0

    .line 80
    :cond_1
    cmp-long v0, v2, v8

    if-nez v0, :cond_2

    .line 81
    invoke-interface {p0}, Lcom/koushikdutta/async/y;->i()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/koushikdutta/async/http/b;->a(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/Exception;)Lcom/koushikdutta/async/http/b;

    move-result-object v0

    .line 82
    invoke-virtual {v0, p0}, Lcom/koushikdutta/async/http/b;->a(Lcom/koushikdutta/async/y;)V

    move-object p0, v0

    .line 84
    goto :goto_1

    .line 86
    :cond_2
    new-instance v0, Lcom/koushikdutta/async/http/filter/c;

    invoke-direct {v0, v2, v3}, Lcom/koushikdutta/async/http/filter/c;-><init>(J)V

    .line 87
    invoke-virtual {v0, p0}, Lcom/koushikdutta/async/http/filter/c;->a(Lcom/koushikdutta/async/y;)V

    move-object p0, v0

    .line 105
    :cond_3
    :goto_2
    const-string v0, "gzip"

    const-string v1, "Content-Encoding"

    invoke-virtual {p1, v1}, Lcom/koushikdutta/async/http/b/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 106
    new-instance v0, Lcom/koushikdutta/async/http/filter/d;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/filter/d;-><init>()V

    .line 107
    invoke-virtual {v0, p0}, Lcom/koushikdutta/async/http/filter/d;->a(Lcom/koushikdutta/async/y;)V

    move-object p0, v0

    .line 109
    goto :goto_1

    .line 90
    :cond_4
    const-string v0, "chunked"

    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lcom/koushikdutta/async/http/b/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 91
    new-instance v0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;-><init>()V

    .line 92
    invoke-virtual {v0, p0}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->a(Lcom/koushikdutta/async/y;)V

    move-object p0, v0

    .line 94
    goto :goto_2

    .line 96
    :cond_5
    const-string v0, "close"

    const-string v1, "Connection"

    invoke-virtual {p1, v1}, Lcom/koushikdutta/async/http/b/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 98
    invoke-interface {p0}, Lcom/koushikdutta/async/y;->i()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/koushikdutta/async/http/b;->a(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/Exception;)Lcom/koushikdutta/async/http/b;

    move-result-object v0

    .line 99
    invoke-virtual {v0, p0}, Lcom/koushikdutta/async/http/b;->a(Lcom/koushikdutta/async/y;)V

    move-object p0, v0

    .line 101
    goto :goto_1

    .line 110
    :cond_6
    const-string v0, "deflate"

    const-string v1, "Content-Encoding"

    invoke-virtual {p1, v1}, Lcom/koushikdutta/async/http/b/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    new-instance v0, Lcom/koushikdutta/async/http/filter/j;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/filter/j;-><init>()V

    .line 112
    invoke-virtual {v0, p0}, Lcom/koushikdutta/async/http/filter/j;->a(Lcom/koushikdutta/async/y;)V

    move-object p0, v0

    .line 113
    goto :goto_1
.end method

.method public static a(Lcom/koushikdutta/async/http/b/e;)Z
    .locals 2

    .prologue
    .line 123
    const-string v0, "Connection"

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/b/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_0

    .line 125
    const-string v1, "keep-alive"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 131
    :goto_0
    return v0

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/b/e;->b()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/koushikdutta/async/http/a;->b:Landroid/support/v7/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public a(Landroid/support/v7/internal/view/menu/MenuBuilder;)V
    .locals 0

    .prologue
    .line 1266
    return-void
.end method

.method public a(Landroid/support/v7/internal/view/menu/MenuBuilder;Z)V
    .locals 0

    .prologue
    .line 1239
    return-void
.end method

.method public a(Landroid/support/v7/widget/m;)V
    .locals 0

    .prologue
    .line 1210
    iput-object p1, p0, Lcom/koushikdutta/async/http/a;->e:Landroid/support/v7/widget/m;

    .line 1211
    return-void
.end method

.method public a(Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/koushikdutta/async/http/a;->e:Landroid/support/v7/widget/m;

    if-eqz v0, :cond_0

    .line 1227
    iget-object v0, p0, Lcom/koushikdutta/async/http/a;->e:Landroid/support/v7/widget/m;

    invoke-interface {v0, p2}, Landroid/support/v7/widget/m;->a(Landroid/view/MenuItem;)Z

    move-result v0

    .line 1229
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a_(Landroid/support/v7/internal/view/menu/MenuBuilder;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1245
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 1253
    :cond_0
    :goto_0
    return v0

    .line 1247
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->hasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1252
    new-instance v1, Landroid/support/v7/internal/view/menu/s;

    iget-object v2, p0, Lcom/koushikdutta/async/http/a;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/koushikdutta/async/http/a;->c:Landroid/view/View;

    invoke-direct {v1, v2, p1, v3}, Landroid/support/v7/internal/view/menu/s;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/s;->d()V

    goto :goto_0
.end method

.method public b()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 1176
    new-instance v0, Landroid/support/v7/internal/view/e;

    iget-object v1, p0, Lcom/koushikdutta/async/http/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/internal/view/e;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/koushikdutta/async/http/a;->d:Landroid/support/v7/internal/view/menu/s;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/s;->d()V

    .line 1194
    return-void
.end method
