.class final Lokio/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/x;


# instance fields
.field private synthetic a:Lokio/x;

.field private synthetic b:Lokio/a;


# direct methods
.method constructor <init>(Lokio/a;Lokio/x;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lokio/b;->b:Lokio/a;

    iput-object p2, p0, Lokio/b;->a:Lokio/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lokio/z;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lokio/b;->b:Lokio/a;

    return-object v0
.end method

.method public final a_(Lokio/f;J)V
    .locals 4

    .prologue
    .line 153
    iget-object v0, p0, Lokio/b;->b:Lokio/a;

    invoke-virtual {v0}, Lokio/a;->c()V

    .line 155
    :try_start_0
    iget-object v0, p0, Lokio/b;->a:Lokio/x;

    invoke-interface {v0, p1, p2, p3}, Lokio/x;->a_(Lokio/f;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    iget-object v0, p0, Lokio/b;->b:Lokio/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lokio/a;->a(Z)V

    .line 161
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    :try_start_1
    iget-object v1, p0, Lokio/b;->b:Lokio/a;

    invoke-virtual {v1, v0}, Lokio/a;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lokio/b;->b:Lokio/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lokio/a;->a(Z)V

    throw v0
.end method

.method public final close()V
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lokio/b;->b:Lokio/a;

    invoke-virtual {v0}, Lokio/a;->c()V

    .line 181
    :try_start_0
    iget-object v0, p0, Lokio/b;->a:Lokio/x;

    invoke-interface {v0}, Lokio/x;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    iget-object v0, p0, Lokio/b;->b:Lokio/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lokio/a;->a(Z)V

    .line 187
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    :try_start_1
    iget-object v1, p0, Lokio/b;->b:Lokio/a;

    invoke-virtual {v1, v0}, Lokio/a;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lokio/b;->b:Lokio/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lokio/a;->a(Z)V

    throw v0
.end method

.method public final flush()V
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Lokio/b;->b:Lokio/a;

    invoke-virtual {v0}, Lokio/a;->c()V

    .line 168
    :try_start_0
    iget-object v0, p0, Lokio/b;->a:Lokio/x;

    invoke-interface {v0}, Lokio/x;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    iget-object v0, p0, Lokio/b;->b:Lokio/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lokio/a;->a(Z)V

    .line 174
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    :try_start_1
    iget-object v1, p0, Lokio/b;->b:Lokio/a;

    invoke-virtual {v1, v0}, Lokio/a;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lokio/b;->b:Lokio/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lokio/a;->a(Z)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AsyncTimeout.sink("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lokio/b;->a:Lokio/x;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
