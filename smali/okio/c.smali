.class final Lokio/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/y;


# instance fields
.field private synthetic a:Lokio/y;

.field private synthetic b:Lokio/a;


# direct methods
.method constructor <init>(Lokio/a;Lokio/y;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lokio/c;->b:Lokio/a;

    iput-object p2, p0, Lokio/c;->a:Lokio/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lokio/f;J)J
    .locals 4

    .prologue
    .line 208
    const/4 v1, 0x0

    .line 209
    iget-object v0, p0, Lokio/c;->b:Lokio/a;

    invoke-virtual {v0}, Lokio/a;->c()V

    .line 211
    :try_start_0
    iget-object v0, p0, Lokio/c;->a:Lokio/y;

    invoke-interface {v0, p1, p2, p3}, Lokio/y;->a(Lokio/f;J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 217
    iget-object v2, p0, Lokio/c;->b:Lokio/a;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lokio/a;->a(Z)V

    return-wide v0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    :try_start_1
    iget-object v2, p0, Lokio/c;->b:Lokio/a;

    invoke-virtual {v2, v0}, Lokio/a;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lokio/c;->b:Lokio/a;

    invoke-virtual {v2, v1}, Lokio/a;->a(Z)V

    throw v0
.end method

.method public final a()Lokio/z;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lokio/c;->b:Lokio/a;

    return-object v0
.end method

.method public final close()V
    .locals 3

    .prologue
    .line 224
    :try_start_0
    iget-object v0, p0, Lokio/c;->a:Lokio/y;

    invoke-interface {v0}, Lokio/y;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    iget-object v0, p0, Lokio/c;->b:Lokio/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lokio/a;->a(Z)V

    .line 230
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    :try_start_1
    iget-object v1, p0, Lokio/c;->b:Lokio/a;

    invoke-virtual {v1, v0}, Lokio/a;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lokio/c;->b:Lokio/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lokio/a;->a(Z)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AsyncTimeout.source("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lokio/c;->a:Lokio/y;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
