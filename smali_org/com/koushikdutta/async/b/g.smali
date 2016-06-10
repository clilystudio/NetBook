.class public Lcom/koushikdutta/async/b/g;
.super Lcom/koushikdutta/async/b/e;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/koushikdutta/async/b/e;",
        "Lcom/koushikdutta/async/b/c",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/koushikdutta/async/a;

.field private b:Ljava/lang/Exception;

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Lcom/koushikdutta/async/b/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/b/d",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/koushikdutta/async/b/e;-><init>()V

    .line 18
    return-void
.end method

.method private a(Z)Z
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Lcom/koushikdutta/async/b/e;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    const/4 v0, 0x0

    .line 45
    :goto_0
    return v0

    .line 38
    :cond_0
    monitor-enter p0

    .line 39
    :try_start_0
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/b/g;->b:Ljava/lang/Exception;

    .line 40
    invoke-direct {p0}, Lcom/koushikdutta/async/b/g;->f()V

    .line 41
    invoke-direct {p0}, Lcom/koushikdutta/async/b/g;->e()Lcom/koushikdutta/async/b/d;

    move-result-object v0

    .line 42
    iput-boolean p1, p0, Lcom/koushikdutta/async/b/g;->d:Z

    .line 43
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/b/g;->c(Lcom/koushikdutta/async/b/d;)V

    .line 45
    const/4 v0, 0x1

    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private c(Lcom/koushikdutta/async/b/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/b/d",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 106
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/koushikdutta/async/b/g;->d:Z

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/koushikdutta/async/b/g;->b:Ljava/lang/Exception;

    iget-object v1, p0, Lcom/koushikdutta/async/b/g;->c:Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lcom/koushikdutta/async/b/d;->a(Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 108
    :cond_0
    return-void
.end method

.method private d(Lcom/koushikdutta/async/b/d;)Lcom/koushikdutta/async/b/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/b/d",
            "<TT;>;)",
            "Lcom/koushikdutta/async/b/g",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 168
    monitor-enter p0

    .line 169
    :try_start_0
    iput-object p1, p0, Lcom/koushikdutta/async/b/g;->e:Lcom/koushikdutta/async/b/d;

    .line 170
    invoke-virtual {p0}, Lcom/koushikdutta/async/b/g;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/koushikdutta/async/b/g;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    :cond_0
    invoke-direct {p0}, Lcom/koushikdutta/async/b/g;->e()Lcom/koushikdutta/async/b/d;

    move-result-object v0

    .line 174
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/b/g;->c(Lcom/koushikdutta/async/b/d;)V

    .line 176
    return-object p0

    .line 173
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 174
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private d()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/koushikdutta/async/b/g;->b:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/koushikdutta/async/b/g;->b:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/b/g;->c:Ljava/lang/Object;

    return-object v0
.end method

.method private e()Lcom/koushikdutta/async/b/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/koushikdutta/async/b/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/koushikdutta/async/b/g;->e:Lcom/koushikdutta/async/b/d;

    .line 101
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/koushikdutta/async/b/g;->e:Lcom/koushikdutta/async/b/d;

    .line 102
    return-object v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/koushikdutta/async/b/g;->a:Lcom/koushikdutta/async/a;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/koushikdutta/async/b/g;->a:Lcom/koushikdutta/async/a;

    invoke-virtual {v0}, Lcom/koushikdutta/async/a;->b()V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/koushikdutta/async/b/g;->a:Lcom/koushikdutta/async/a;

    .line 115
    :cond_0
    return-void
.end method

.method private g()Lcom/koushikdutta/async/a;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/koushikdutta/async/b/g;->a:Lcom/koushikdutta/async/a;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Lcom/koushikdutta/async/a;

    invoke-direct {v0}, Lcom/koushikdutta/async/a;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/b/g;->a:Lcom/koushikdutta/async/a;

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/b/g;->a:Lcom/koushikdutta/async/a;

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lcom/koushikdutta/async/b/a;)Lcom/koushikdutta/async/b/b;
    .locals 0

    .prologue
    .line 10
    .line 2189
    invoke-super {p0, p1}, Lcom/koushikdutta/async/b/e;->b(Lcom/koushikdutta/async/b/a;)Lcom/koushikdutta/async/b/e;

    .line 10
    return-object p0
.end method

.method public final synthetic a(Lcom/koushikdutta/async/b/d;)Lcom/koushikdutta/async/b/c;
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/b/g;->d(Lcom/koushikdutta/async/b/d;)Lcom/koushikdutta/async/b/g;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/koushikdutta/async/b/d;)Lcom/koushikdutta/async/b/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/koushikdutta/async/b/d",
            "<TT;>;>(TC;)TC;"
        }
    .end annotation

    .prologue
    .line 182
    move-object v0, p1

    check-cast v0, Lcom/koushikdutta/async/b/b;

    invoke-interface {v0, p0}, Lcom/koushikdutta/async/b/b;->a(Lcom/koushikdutta/async/b/a;)Lcom/koushikdutta/async/b/b;

    .line 183
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/b/g;->d(Lcom/koushikdutta/async/b/d;)Lcom/koushikdutta/async/b/g;

    .line 184
    return-object p1
.end method

.method public final bridge synthetic b(Lcom/koushikdutta/async/b/a;)Lcom/koushikdutta/async/b/e;
    .locals 0

    .prologue
    .line 10
    .line 1189
    invoke-super {p0, p1}, Lcom/koushikdutta/async/b/e;->b(Lcom/koushikdutta/async/b/a;)Lcom/koushikdutta/async/b/e;

    .line 10
    return-object p0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/koushikdutta/async/b/g;->d:Z

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/b/g;->a(Z)Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/Exception;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "TT;)Z"
        }
    .end annotation

    .prologue
    .line 133
    monitor-enter p0

    .line 134
    :try_start_0
    invoke-super {p0}, Lcom/koushikdutta/async/b/e;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    const/4 v0, 0x0

    monitor-exit p0

    .line 142
    :goto_0
    return v0

    .line 136
    :cond_0
    iput-object p2, p0, Lcom/koushikdutta/async/b/g;->c:Ljava/lang/Object;

    .line 137
    iput-object p1, p0, Lcom/koushikdutta/async/b/g;->b:Ljava/lang/Exception;

    .line 138
    invoke-direct {p0}, Lcom/koushikdutta/async/b/g;->f()V

    .line 139
    invoke-direct {p0}, Lcom/koushikdutta/async/b/g;->e()Lcom/koushikdutta/async/b/d;

    move-result-object v0

    .line 140
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/b/g;->c(Lcom/koushikdutta/async/b/d;)V

    .line 142
    const/4 v0, 0x1

    goto :goto_0

    .line 140
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 90
    .line 1128
    invoke-virtual {p0, v0, v0}, Lcom/koushikdutta/async/b/g;->b(Ljava/lang/Exception;Ljava/lang/Object;)Z

    move-result v0

    .line 90
    return v0
.end method

.method public cancel(Z)Z
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/koushikdutta/async/b/g;->b()Z

    move-result v0

    return v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 60
    monitor-enter p0

    .line 61
    :try_start_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/b/g;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/koushikdutta/async/b/g;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    :cond_0
    invoke-direct {p0}, Lcom/koushikdutta/async/b/g;->d()Ljava/lang/Object;

    move-result-object v0

    monitor-exit p0

    .line 66
    :goto_0
    return-object v0

    .line 63
    :cond_1
    invoke-direct {p0}, Lcom/koushikdutta/async/b/g;->g()Lcom/koushikdutta/async/a;

    move-result-object v0

    .line 64
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-virtual {v0}, Lcom/koushikdutta/async/a;->a()V

    .line 66
    invoke-direct {p0}, Lcom/koushikdutta/async/b/g;->d()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 78
    monitor-enter p0

    .line 79
    :try_start_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/b/g;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/koushikdutta/async/b/g;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    :cond_0
    invoke-direct {p0}, Lcom/koushikdutta/async/b/g;->d()Ljava/lang/Object;

    move-result-object v0

    monitor-exit p0

    .line 85
    :goto_0
    return-object v0

    .line 81
    :cond_1
    invoke-direct {p0}, Lcom/koushikdutta/async/b/g;->g()Lcom/koushikdutta/async/a;

    move-result-object v0

    .line 82
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    invoke-virtual {v0, p1, p2, p3}, Lcom/koushikdutta/async/a;->a(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 84
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0

    .line 82
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 85
    :cond_2
    invoke-direct {p0}, Lcom/koushikdutta/async/b/g;->d()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
