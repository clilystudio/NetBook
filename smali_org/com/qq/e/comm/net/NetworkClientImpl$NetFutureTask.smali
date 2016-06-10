.class Lcom/qq/e/comm/net/NetworkClientImpl$NetFutureTask;
.super Ljava/util/concurrent/FutureTask;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask",
        "<TT;>;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/qq/e/comm/net/NetworkClientImpl$NetFutureTask",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/qq/e/comm/net/NetworkClient$Priority;


# direct methods
.method public constructor <init>(Lcom/qq/e/comm/net/NetworkClientImpl;Ljava/util/concurrent/Callable;Lcom/qq/e/comm/net/NetworkClient$Priority;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;",
            "Lcom/qq/e/comm/net/NetworkClient$Priority;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object p3, p0, Lcom/qq/e/comm/net/NetworkClientImpl$NetFutureTask;->a:Lcom/qq/e/comm/net/NetworkClient$Priority;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/qq/e/comm/net/NetworkClientImpl$NetFutureTask;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qq/e/comm/net/NetworkClientImpl$NetFutureTask",
            "<TT;>;)I"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/qq/e/comm/net/NetworkClientImpl$NetFutureTask;->a:Lcom/qq/e/comm/net/NetworkClient$Priority;

    invoke-virtual {v0}, Lcom/qq/e/comm/net/NetworkClient$Priority;->value()I

    move-result v0

    iget-object v1, p1, Lcom/qq/e/comm/net/NetworkClientImpl$NetFutureTask;->a:Lcom/qq/e/comm/net/NetworkClient$Priority;

    invoke-virtual {v1}, Lcom/qq/e/comm/net/NetworkClient$Priority;->value()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/qq/e/comm/net/NetworkClientImpl$NetFutureTask;

    invoke-virtual {p0, p1}, Lcom/qq/e/comm/net/NetworkClientImpl$NetFutureTask;->compareTo(Lcom/qq/e/comm/net/NetworkClientImpl$NetFutureTask;)I

    move-result v0

    return v0
.end method
