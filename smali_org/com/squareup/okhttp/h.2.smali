.class final Lcom/squareup/okhttp/h;
.super Lcom/squareup/okhttp/internal/c;
.source "SourceFile"


# instance fields
.field private final a:Lcom/squareup/okhttp/i;

.field private final b:Z

.field private synthetic c:Lcom/squareup/okhttp/f;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/f;Lcom/squareup/okhttp/i;Z)V
    .locals 4

    .prologue
    .line 135
    iput-object p1, p0, Lcom/squareup/okhttp/h;->c:Lcom/squareup/okhttp/f;

    .line 136
    const-string v0, "OkHttp %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/squareup/okhttp/f;->b:Lcom/squareup/okhttp/C;

    invoke-virtual {v3}, Lcom/squareup/okhttp/C;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/squareup/okhttp/internal/c;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    iput-object p2, p0, Lcom/squareup/okhttp/h;->a:Lcom/squareup/okhttp/i;

    .line 138
    iput-boolean p3, p0, Lcom/squareup/okhttp/h;->b:Z

    .line 139
    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/f;Lcom/squareup/okhttp/i;ZB)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0, p1, p2, p3}, Lcom/squareup/okhttp/h;-><init>(Lcom/squareup/okhttp/f;Lcom/squareup/okhttp/i;Z)V

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/squareup/okhttp/h;->c:Lcom/squareup/okhttp/f;

    iget-object v0, v0, Lcom/squareup/okhttp/f;->b:Lcom/squareup/okhttp/C;

    invoke-virtual {v0}, Lcom/squareup/okhttp/C;->a()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final b()V
    .locals 5

    .prologue
    .line 162
    const/4 v1, 0x0

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/h;->c:Lcom/squareup/okhttp/f;

    iget-boolean v2, p0, Lcom/squareup/okhttp/h;->b:Z

    invoke-static {v0, v2}, Lcom/squareup/okhttp/f;->a(Lcom/squareup/okhttp/f;Z)Lcom/squareup/okhttp/I;

    move-result-object v0

    .line 165
    iget-object v2, p0, Lcom/squareup/okhttp/h;->c:Lcom/squareup/okhttp/f;

    iget-boolean v1, v2, Lcom/squareup/okhttp/f;->a:Z

    .line 169
    const/4 v1, 0x1

    .line 170
    iget-object v2, p0, Lcom/squareup/okhttp/h;->a:Lcom/squareup/okhttp/i;

    invoke-interface {v2, v0}, Lcom/squareup/okhttp/i;->onResponse(Lcom/squareup/okhttp/I;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    iget-object v0, p0, Lcom/squareup/okhttp/h;->c:Lcom/squareup/okhttp/f;

    invoke-static {v0}, Lcom/squareup/okhttp/f;->b(Lcom/squareup/okhttp/f;)Lcom/squareup/okhttp/A;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/A;->r()Lcom/squareup/okhttp/r;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/okhttp/r;->b(Lcom/squareup/okhttp/h;)V

    .line 181
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 173
    if-eqz v1, :cond_0

    .line 175
    :try_start_1
    sget-object v1, Lcom/squareup/okhttp/internal/b;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Callback failure for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/squareup/okhttp/h;->c:Lcom/squareup/okhttp/f;

    invoke-static {v4}, Lcom/squareup/okhttp/f;->a(Lcom/squareup/okhttp/f;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    :goto_1
    iget-object v0, p0, Lcom/squareup/okhttp/h;->c:Lcom/squareup/okhttp/f;

    invoke-static {v0}, Lcom/squareup/okhttp/f;->b(Lcom/squareup/okhttp/f;)Lcom/squareup/okhttp/A;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/A;->r()Lcom/squareup/okhttp/r;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/okhttp/r;->b(Lcom/squareup/okhttp/h;)V

    goto :goto_0

    .line 177
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/squareup/okhttp/h;->a:Lcom/squareup/okhttp/i;

    iget-object v2, p0, Lcom/squareup/okhttp/h;->c:Lcom/squareup/okhttp/f;

    iget-object v2, v2, Lcom/squareup/okhttp/f;->c:Lcom/squareup/okhttp/internal/http/m;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/m;->d()Lcom/squareup/okhttp/C;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/squareup/okhttp/i;->onFailure(Lcom/squareup/okhttp/C;Ljava/io/IOException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 180
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/squareup/okhttp/h;->c:Lcom/squareup/okhttp/f;

    invoke-static {v1}, Lcom/squareup/okhttp/f;->b(Lcom/squareup/okhttp/f;)Lcom/squareup/okhttp/A;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/A;->r()Lcom/squareup/okhttp/r;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/squareup/okhttp/r;->b(Lcom/squareup/okhttp/h;)V

    throw v0
.end method
