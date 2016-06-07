.class abstract Lcom/nostra13/universalimageloader/core/assist/deque/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/nostra13/universalimageloader/core/assist/deque/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nostra13/universalimageloader/core/assist/deque/c",
            "<TE;>;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private c:Lcom/nostra13/universalimageloader/core/assist/deque/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nostra13/universalimageloader/core/assist/deque/c",
            "<TE;>;"
        }
    .end annotation
.end field

.field private synthetic d:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;


# direct methods
.method constructor <init>(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;)V
    .locals 2

    .prologue
    .line 1036
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/d;->d:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1038
    iget-object v1, p1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1039
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1041
    :try_start_0
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/d;->a()Lcom/nostra13/universalimageloader/core/assist/deque/c;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/d;->a:Lcom/nostra13/universalimageloader/core/assist/deque/c;

    .line 1042
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/d;->a:Lcom/nostra13/universalimageloader/core/assist/deque/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/d;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1044
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1045
    return-void

    .line 1042
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/d;->a:Lcom/nostra13/universalimageloader/core/assist/deque/c;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/assist/deque/c;->a:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1044
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1072
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/d;->d:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;

    iget-object v3, v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1073
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1076
    :try_start_0
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/d;->a:Lcom/nostra13/universalimageloader/core/assist/deque/c;

    move-object v2, v1

    .line 2056
    :goto_0
    invoke-virtual {p0, v2}, Lcom/nostra13/universalimageloader/core/assist/deque/d;->a(Lcom/nostra13/universalimageloader/core/assist/deque/c;)Lcom/nostra13/universalimageloader/core/assist/deque/c;

    move-result-object v1

    .line 2057
    if-nez v1, :cond_1

    move-object v1, v0

    .line 1076
    :cond_0
    :goto_1
    iput-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/d;->a:Lcom/nostra13/universalimageloader/core/assist/deque/c;

    .line 1077
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/d;->a:Lcom/nostra13/universalimageloader/core/assist/deque/c;

    if-nez v1, :cond_3

    :goto_2
    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/d;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1079
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1080
    return-void

    .line 2059
    :cond_1
    :try_start_1
    iget-object v4, v1, Lcom/nostra13/universalimageloader/core/assist/deque/c;->a:Ljava/lang/Object;

    if-nez v4, :cond_0

    .line 2061
    if-ne v1, v2, :cond_2

    .line 2062
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/d;->a()Lcom/nostra13/universalimageloader/core/assist/deque/c;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v2, v1

    .line 2065
    goto :goto_0

    .line 1077
    :cond_3
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/d;->a:Lcom/nostra13/universalimageloader/core/assist/deque/c;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/assist/deque/c;->a:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1079
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method


# virtual methods
.method abstract a()Lcom/nostra13/universalimageloader/core/assist/deque/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nostra13/universalimageloader/core/assist/deque/c",
            "<TE;>;"
        }
    .end annotation
.end method

.method abstract a(Lcom/nostra13/universalimageloader/core/assist/deque/c;)Lcom/nostra13/universalimageloader/core/assist/deque/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nostra13/universalimageloader/core/assist/deque/c",
            "<TE;>;)",
            "Lcom/nostra13/universalimageloader/core/assist/deque/c",
            "<TE;>;"
        }
    .end annotation
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/d;->a:Lcom/nostra13/universalimageloader/core/assist/deque/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/d;->a:Lcom/nostra13/universalimageloader/core/assist/deque/c;

    if-nez v0, :cond_0

    .line 1089
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1090
    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/d;->a:Lcom/nostra13/universalimageloader/core/assist/deque/c;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/d;->c:Lcom/nostra13/universalimageloader/core/assist/deque/c;

    .line 1091
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/d;->b:Ljava/lang/Object;

    .line 1092
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/d;->b()V

    .line 1093
    return-object v0
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/d;->c:Lcom/nostra13/universalimageloader/core/assist/deque/c;

    .line 1098
    if-nez v0, :cond_0

    .line 1099
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1100
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/d;->c:Lcom/nostra13/universalimageloader/core/assist/deque/c;

    .line 1101
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/d;->d:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;

    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1102
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1104
    :try_start_0
    iget-object v2, v0, Lcom/nostra13/universalimageloader/core/assist/deque/c;->a:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 1105
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/d;->d:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;

    invoke-virtual {v2, v0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->unlink$2f314fad(Lcom/nostra13/universalimageloader/core/assist/deque/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1107
    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1108
    return-void

    .line 1107
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
