.class final Lcom/b/f;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/b/a;


# direct methods
.method private constructor <init>(Lcom/b/a;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 803
    iput-object p1, p0, Lcom/b/f;->a:Lcom/b/a;

    .line 804
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 805
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a;Ljava/io/OutputStream;B)V
    .locals 0

    .prologue
    .line 802
    invoke-direct {p0, p1, p2}, Lcom/b/f;-><init>(Lcom/b/a;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 825
    :try_start_0
    iget-object v0, p0, Lcom/b/f;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 829
    :goto_0
    return-void

    .line 827
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/b/f;->a:Lcom/b/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/b/a;->a(Lcom/b/a;Z)Z

    goto :goto_0
.end method

.method public final flush()V
    .locals 2

    .prologue
    .line 833
    :try_start_0
    iget-object v0, p0, Lcom/b/f;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 837
    :goto_0
    return-void

    .line 835
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/b/f;->a:Lcom/b/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/b/a;->a(Lcom/b/a;Z)Z

    goto :goto_0
.end method

.method public final write(I)V
    .locals 2

    .prologue
    .line 809
    :try_start_0
    iget-object v0, p0, Lcom/b/f;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 813
    :goto_0
    return-void

    .line 811
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/b/f;->a:Lcom/b/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/b/a;->a(Lcom/b/a;Z)Z

    goto :goto_0
.end method

.method public final write([BII)V
    .locals 2

    .prologue
    .line 817
    :try_start_0
    iget-object v0, p0, Lcom/b/f;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 821
    :goto_0
    return-void

    .line 819
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/b/f;->a:Lcom/b/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/b/a;->a(Lcom/b/a;Z)Z

    goto :goto_0
.end method
