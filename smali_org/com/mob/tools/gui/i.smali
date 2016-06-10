.class public final Lcom/mob/tools/gui/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/mob/tools/gui/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mob/tools/gui/j",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private d:Lcom/mob/tools/gui/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mob/tools/gui/j",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/mob/tools/gui/i;->a:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/mob/tools/gui/i;->b:I

    return v0
.end method

.method public final declared-synchronized a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/gui/i;->c:Lcom/mob/tools/gui/j;

    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/mob/tools/gui/j;->a:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, v1, Lcom/mob/tools/gui/j;->d:Lcom/mob/tools/gui/j;

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_2

    iget-object v0, v1, Lcom/mob/tools/gui/j;->c:Lcom/mob/tools/gui/j;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/mob/tools/gui/j;->d:Lcom/mob/tools/gui/j;

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/mob/tools/gui/j;->c:Lcom/mob/tools/gui/j;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/mob/tools/gui/j;->d:Lcom/mob/tools/gui/j;

    iget-object v0, p0, Lcom/mob/tools/gui/i;->d:Lcom/mob/tools/gui/j;

    iget-object v0, v0, Lcom/mob/tools/gui/j;->c:Lcom/mob/tools/gui/j;

    iput-object v0, p0, Lcom/mob/tools/gui/i;->d:Lcom/mob/tools/gui/j;

    :goto_1
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/mob/tools/gui/j;->c:Lcom/mob/tools/gui/j;

    iget-object v0, p0, Lcom/mob/tools/gui/i;->c:Lcom/mob/tools/gui/j;

    iput-object v0, v1, Lcom/mob/tools/gui/j;->d:Lcom/mob/tools/gui/j;

    iget-object v0, p0, Lcom/mob/tools/gui/i;->c:Lcom/mob/tools/gui/j;

    iput-object v1, v0, Lcom/mob/tools/gui/j;->c:Lcom/mob/tools/gui/j;

    iput-object v1, p0, Lcom/mob/tools/gui/i;->c:Lcom/mob/tools/gui/j;

    :cond_1
    iget-object v0, v1, Lcom/mob/tools/gui/j;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-object v0

    :cond_3
    :try_start_1
    iget-object v0, v1, Lcom/mob/tools/gui/j;->c:Lcom/mob/tools/gui/j;

    iget-object v2, v1, Lcom/mob/tools/gui/j;->d:Lcom/mob/tools/gui/j;

    iput-object v2, v0, Lcom/mob/tools/gui/j;->d:Lcom/mob/tools/gui/j;

    iget-object v0, v1, Lcom/mob/tools/gui/j;->d:Lcom/mob/tools/gui/j;

    iget-object v2, v1, Lcom/mob/tools/gui/j;->c:Lcom/mob/tools/gui/j;

    iput-object v2, v0, Lcom/mob/tools/gui/j;->c:Lcom/mob/tools/gui/j;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(J)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/mob/tools/gui/i;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v0, :cond_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/mob/tools/gui/i;->c:Lcom/mob/tools/gui/j;

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/mob/tools/gui/j;->a(Lcom/mob/tools/gui/j;)J

    move-result-wide v2

    cmp-long v1, v2, p1

    if-gez v1, :cond_5

    iget-object v1, v0, Lcom/mob/tools/gui/j;->c:Lcom/mob/tools/gui/j;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/mob/tools/gui/j;->c:Lcom/mob/tools/gui/j;

    iget-object v2, v0, Lcom/mob/tools/gui/j;->d:Lcom/mob/tools/gui/j;

    iput-object v2, v1, Lcom/mob/tools/gui/j;->d:Lcom/mob/tools/gui/j;

    :cond_2
    iget-object v1, v0, Lcom/mob/tools/gui/j;->d:Lcom/mob/tools/gui/j;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/mob/tools/gui/j;->d:Lcom/mob/tools/gui/j;

    iget-object v2, v0, Lcom/mob/tools/gui/j;->c:Lcom/mob/tools/gui/j;

    iput-object v2, v1, Lcom/mob/tools/gui/j;->c:Lcom/mob/tools/gui/j;

    :cond_3
    iget-object v1, p0, Lcom/mob/tools/gui/i;->c:Lcom/mob/tools/gui/j;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/mob/tools/gui/i;->c:Lcom/mob/tools/gui/j;

    iget-object v1, v1, Lcom/mob/tools/gui/j;->d:Lcom/mob/tools/gui/j;

    iput-object v1, p0, Lcom/mob/tools/gui/i;->c:Lcom/mob/tools/gui/j;

    :cond_4
    iget v1, p0, Lcom/mob/tools/gui/i;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/mob/tools/gui/i;->b:I

    :cond_5
    iget-object v0, v0, Lcom/mob/tools/gui/j;->d:Lcom/mob/tools/gui/j;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget v2, p0, Lcom/mob/tools/gui/i;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    move-object v0, v1

    :goto_1
    :try_start_1
    iget v1, p0, Lcom/mob/tools/gui/i;->b:I

    iget v2, p0, Lcom/mob/tools/gui/i;->a:I

    if-lt v1, v2, :cond_2

    iget-object v0, p0, Lcom/mob/tools/gui/i;->d:Lcom/mob/tools/gui/j;

    iget-object v1, p0, Lcom/mob/tools/gui/i;->d:Lcom/mob/tools/gui/j;

    iget-object v1, v1, Lcom/mob/tools/gui/j;->c:Lcom/mob/tools/gui/j;

    iput-object v1, p0, Lcom/mob/tools/gui/i;->d:Lcom/mob/tools/gui/j;

    iget-object v1, p0, Lcom/mob/tools/gui/i;->d:Lcom/mob/tools/gui/j;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/mob/tools/gui/j;->d:Lcom/mob/tools/gui/j;

    iget v1, p0, Lcom/mob/tools/gui/i;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/mob/tools/gui/i;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    if-nez v0, :cond_3

    :try_start_2
    new-instance v0, Lcom/mob/tools/gui/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mob/tools/gui/j;-><init>(B)V

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/mob/tools/gui/j;->a(Lcom/mob/tools/gui/j;J)J

    iput-object p1, v0, Lcom/mob/tools/gui/j;->a:Ljava/lang/Object;

    iput-object p2, v0, Lcom/mob/tools/gui/j;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mob/tools/gui/j;->c:Lcom/mob/tools/gui/j;

    iget-object v1, p0, Lcom/mob/tools/gui/i;->c:Lcom/mob/tools/gui/j;

    iput-object v1, v0, Lcom/mob/tools/gui/j;->d:Lcom/mob/tools/gui/j;

    iget v1, p0, Lcom/mob/tools/gui/i;->b:I

    if-nez v1, :cond_4

    iput-object v0, p0, Lcom/mob/tools/gui/i;->d:Lcom/mob/tools/gui/j;

    :goto_2
    iput-object v0, p0, Lcom/mob/tools/gui/i;->c:Lcom/mob/tools/gui/j;

    iget v0, p0, Lcom/mob/tools/gui/i;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mob/tools/gui/i;->b:I

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/mob/tools/gui/i;->c:Lcom/mob/tools/gui/j;

    iput-object v0, v1, Lcom/mob/tools/gui/j;->c:Lcom/mob/tools/gui/j;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method
