.class public abstract Lcom/github/kevinsawicki/http/b;
.super Lcom/github/kevinsawicki/http/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/github/kevinsawicki/http/e",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/io/Closeable;

.field private final b:Z


# direct methods
.method protected constructor <init>(Ljava/io/Closeable;Z)V
    .locals 0

    .prologue
    .line 687
    invoke-direct {p0}, Lcom/github/kevinsawicki/http/e;-><init>()V

    .line 688
    iput-object p1, p0, Lcom/github/kevinsawicki/http/b;->a:Ljava/io/Closeable;

    .line 689
    iput-boolean p2, p0, Lcom/github/kevinsawicki/http/b;->b:Z

    .line 690
    return-void
.end method


# virtual methods
.method protected final b()V
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/github/kevinsawicki/http/b;->a:Ljava/io/Closeable;

    instance-of v0, v0, Ljava/io/Flushable;

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/github/kevinsawicki/http/b;->a:Ljava/io/Closeable;

    check-cast v0, Ljava/io/Flushable;

    invoke-interface {v0}, Ljava/io/Flushable;->flush()V

    .line 696
    :cond_0
    iget-boolean v0, p0, Lcom/github/kevinsawicki/http/b;->b:Z

    if-eqz v0, :cond_1

    .line 698
    :try_start_0
    iget-object v0, p0, Lcom/github/kevinsawicki/http/b;->a:Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 704
    :goto_0
    return-void

    .line 703
    :cond_1
    iget-object v0, p0, Lcom/github/kevinsawicki/http/b;->a:Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    goto :goto_0

    .line 701
    :catch_0
    move-exception v0

    goto :goto_0
.end method
